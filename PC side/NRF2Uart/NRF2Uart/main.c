/*
 * PCController.c
 *
 * Created: 4/6/2025 1:18:47 PM
 * Author : marec
 */ 

#include <avr/io.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>

#define SERIAL_SEND USART0.CTRLA = 0b10100000
#define SPI_SEND(x) while(sendWait); SPI0.DATA = (x); sendWait = 1
#define CS_LOW PORTB.OUTCLR = 1 << 0
#define CS_HIGH PORTB.OUTSET = 1 << 0; for (uint16_t i = 0; i < 1000; i++)
#define CE_LOW PORTA.OUTCLR = 1 << 4
#define CE_HIGH PORTA.OUTSET = 1 << 4
#define SPI_SEND_REG(x, y) CS_LOW; SPI_SEND(x); SPI_SEND(y); while(sendWait); CS_HIGH

char replyBuf[20] = "Ahhoj haha\n\n\n";
char receiveChar = 0;
uint8_t volatile systemCommand = 0;
_Bool dataToWrite = 0;
uint8_t data = 0;
uint8_t volatile irqChanged = 0;
_Bool volatile sendWait = 0;
uint8_t volatile gotBack = 0;
_Bool volatile flashEvent = 0;

int main(void)
{
    //setup system clock (20MHz)
    ccp_write_io((void *) & (CLKCTRL.MCLKCTRLA), 0x0);
    ccp_write_io((void *) & (CLKCTRL.MCLKCTRLB), 0x0);
    ccp_write_io((void *) & (CLKCTRL.OSC20MCTRLA), 0b10);
    while(CLKCTRL.MCLKSTATUS & 1);
	
	SPI0.CTRLA = SPI_MASTER_bm | SPI_ENABLE_bm | 0b110; // MSB, Master, div by 128
	SPI0.CTRLB = SPI_SSD_bm; // SS disabled, Mode 0
	SPI0.INTCTRL = SPI_IE_bm; // interrupt on Transfer Complete
	PORTA.DIRSET = (1 << 1) | (1 << 3) | (1 << 4); // enable MISO, SCK, CE pins
	PORTB.DIRSET = 1 << 0; // enable CS pin
	PORTB.OUTSET = 1 << 0; // set the CS pin high
	
	PORTB.DIRSET = 1 << 2;
	USART0.CTRLA = 0b10100000;	// receive and empty buffer interrupts
	USART0.CTRLB = 0b11000000;
	USART0.CTRLC = USART_CHSIZE_8BIT_gc;
	USART0.BAUD = 8333; // not ideal as there are infinite threes but hopefully this is good enough
	
	PORTA.PIN5CTRL = (1 << 3) | 0x1; // enabled pullup, interrupt on both edges
	PORTB.DIRSET = 1 << 1; // enable LED output
	PORTB.OUTSET = 1 << 1; // set LED on
	
	sei();
	
	// init NRF
	SPI_SEND_REG(0x20, 0x0C);
	SPI_SEND_REG(0x24, 0x55);
	SPI_SEND_REG(0x3D, 0x04);
	SPI_SEND_REG(0x3C, 0x3F);
	SPI_SEND_REG(0x27, 0x7E);
	SPI_SEND_REG(0x20, 0x7C);
	SPI_SEND_REG(0x27, 0x7E);
	SPI_SEND_REG(0xE1, 0x00);
	SPI_SEND_REG(0xE2, 0x00);
	SPI_SEND_REG(0x20, 0x7E);
	SPI_SEND_REG(0x27, 0x0E);
	SPI_SEND_REG(0x20, 0x7E);
	SPI_SEND_REG(0x25, 0x02);
	SPI_SEND_REG(0x26, 0x0F);
	SPI_SEND_REG(0x23, 0x03);
	SPI_SEND_REG(0x21, 0x3F);
	
	SPI_SEND_REG(0x01, 0x00);
	while(sendWait);
	while (gotBack != 0x3F) {
		PORTB.OUTTGL = 1 << 1; // flash LED
		for (uint16_t i = 0; i < 60000; i++);
	}
		
	
    while (1) {
		if (flashEvent) {
			PORTB.OUTTGL = 1 << 1; // flash LED
			for (uint32_t i = 0; i < 100000; i++);
			PORTB.OUTTGL = 1 << 1; // flash LED
			for (uint32_t i = 0; i < 100000; i++);
			flashEvent--;
		}
		else {
			static uint32_t blinkCnt = 0;
			if (++blinkCnt > 600000) {
				blinkCnt = 0;
				PORTB.OUTTGL = 1 << 1; // flash LED
			}
		}
    }
}

ISR(USART0_DRE_vect) {	//new data can be sent
	static uint8_t bufPos = 0;
	
	if (replyBuf[bufPos]) {
		USART0.TXDATAL = replyBuf[bufPos];
		bufPos++;
	}
	else {
		bufPos = 0;
		USART0.CTRLA = 0b10000000;	//disable data out interrupt
		USART0.STATUS |= USART_RXCIE_bm;
		irqChanged = 0;
	}
}

ISR(USART0_RXC_vect) {
	uint8_t tmp = USART0.RXDATAL;
	flashEvent++;
}

ISR(SPI0_INT_vect) {
	gotBack = SPI0.DATA;
	USART0.TXDATAL = gotBack;
	
	sendWait = 0;
	SPI0.INTFLAGS = 0x80; // clear flags
}

ISR(PORTA_PORT_vect) {
	_Bool state = PORTA.IN & (1 << 5);
	
	if (irqChanged == 0) {
		if (state) {
			PORTB.OUTSET = 1 << 1;
			irqChanged = 2;
		}
		else {
			PORTB.OUTCLR = 1 << 1;
			irqChanged = 1;
		}
	}
	
	PORTA.INTFLAGS = 0xff; // clear interrupt flags
}


