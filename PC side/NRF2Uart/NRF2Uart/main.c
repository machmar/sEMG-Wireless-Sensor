/*
 * PCController.c
 *
 * Created: 4/6/2025 1:18:47 PM
 * Author : marec
 */ 

#include <avr/io.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include "avr/delay.h"

#define SERIAL_SEND USART0.CTRLA = 0b10100000
#define SPI_SEND(x) while(sendWait); SPI0.DATA = (x); sendWait = 1
#define CS_LOW PORTB.OUTCLR = 1 << 0
#define CS_HIGH while(sendWait); PORTB.OUTSET = 1 << 0; for (uint16_t i = 0; i < 1000; i++)
#define CE_LOW PORTA.OUTCLR = 1 << 4
#define CE_HIGH PORTA.OUTSET = 1 << 4
#define SPI_SEND_REG(x, y) CS_LOW; SPI_SEND(x); SPI_SEND(y); CS_HIGH
#define NRF_CLEAR_AND_IDLE SPI_SEND_REG(0x27, 0x0E); SPI_SEND_REG(0x20, 0x7E)

char replyBuf[35] = "Ahhoj haha\n\n\n";
char receiveChar = 0;
uint8_t volatile systemCommand = 0;
_Bool dataToWrite = 0;
uint8_t data = 0;
_Bool volatile sendWait = 0;
uint8_t volatile gotBack = 0;
uint8_t volatile flashEvent = 0;
_Bool volatile dealWithInterrupt = 0;

typedef enum {
	State_Idle,
	State_ReceiveWait,
	State_ReceiveReady
} NRF_State_t;

NRF_State_t NRFState = State_Idle;

int main(void)
{
    //setup system clock (20MHz)
    ccp_write_io((void *) & (CLKCTRL.MCLKCTRLA), 0x0);
    ccp_write_io((void *) & (CLKCTRL.MCLKCTRLB), 0x0);
    ccp_write_io((void *) & (CLKCTRL.OSC20MCTRLA), 0b10);
    while(CLKCTRL.MCLKSTATUS & 1);
	
	SPI0.CTRLA = SPI_MASTER_bm | SPI_ENABLE_bm | 0b000; // MSB, Master, div by 4
	SPI0.CTRLB = SPI_SSD_bm; // SS disabled, Mode 0
	SPI0.INTCTRL = SPI_IE_bm; // interrupt on Transfer Complete
	PORTA.DIRSET = (1 << 1) | (1 << 3) | (1 << 4); // enable MISO, SCK, CE pins
	PORTB.DIRSET = 1 << 0; // enable CS pin
	PORTB.OUTSET = 1 << 0; // set the CS pin high
	
	PORTB.DIRSET = 1 << 2;
	USART0.CTRLA = 0b10100000;	// receive and empty buffer interrupts
	USART0.CTRLB = 0b11000000;
	USART0.CTRLC = USART_CHSIZE_8BIT_gc;
	USART0.BAUD = 80; // baudrate of one million (beers)
	
	PORTA.PIN5CTRL = (1 << 3) | 0x3; // enabled pullup, interrupt on falling edge
	PORTB.DIRSET = 1 << 1; // enable LED output
	PORTB.OUTSET = 1 << 1; // set LED on
	
	sei();
	
	_delay_ms(1000); // serial hello transfer, nrf boot
	
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
	while (gotBack != 0x3F) {
		PORTB.OUTTGL = 1 << 1; // flash LED
		for (uint16_t i = 0; i < 60000; i++);
	}
		
		
	NRF_CLEAR_AND_IDLE;
	CS_LOW;
	SPI_SEND(0x2A);
	SPI_SEND(0x01);
	SPI_SEND(0x23);
	SPI_SEND(0x45);
	SPI_SEND(0x67);
	SPI_SEND(0x89);
	CS_HIGH;
	SPI_SEND_REG(0x22, 0x01);
	
	NRFState = State_Idle;
		
    while (1) {
		// LED stuff (very crude I know - I don't care atm)
		if (flashEvent) {
			static uint32_t blinkCnt = 0;
			if (blinkCnt == 1) {
				PORTB.OUTTGL = 1 << 1; // flash LED
			}
			else if (blinkCnt == 10000) {
				PORTB.OUTTGL = 1 << 1; // flash LED
			}
			else if (blinkCnt >= 20000) {
				blinkCnt = 0;
				flashEvent--;
			}
			blinkCnt++;
		}
		else {
			static uint32_t blinkCnt = 0;
			if (++blinkCnt > 600000) {
				blinkCnt = 0;
				PORTB.OUTTGL = 1 << 1; // flash LED
			}
		}
		
		switch (NRFState) {
		case State_Idle:
			NRF_CLEAR_AND_IDLE;
			SPI_SEND_REG(0x27, 0x7E); // all of this is mot likely redundant to do after each tranmission but I don't care atm
			SPI_SEND_REG(0x20, 0x3F);
			SPI_SEND_REG(0xE2, 0x00);
			CE_HIGH; // enable reception amp
			NRFState = State_ReceiveWait;
			break;
			
		case State_ReceiveWait:
			if (dealWithInterrupt) {
				dealWithInterrupt = 0;
				NRFState = State_ReceiveReady;
			}
			break;
			
		case State_ReceiveReady:
			CE_LOW;
			NRF_CLEAR_AND_IDLE;
			SPI_SEND_REG(0x60, 0x00);
			uint8_t dataWidth = gotBack;
			CS_LOW;
			SPI_SEND(0x61);
			for (uint8_t i = 0; i < dataWidth; i++) {
				SPI_SEND(0x00);
				while(sendWait);
				replyBuf[i] = gotBack;
			}
			replyBuf[dataWidth] = '\n';
			replyBuf[dataWidth + 1] = 0;
			SERIAL_SEND;
			SPI_SEND_REG(0x27, 0x7E);
			NRFState = State_Idle;
			break;
		
		default:
			break;
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
	}
}

ISR(USART0_RXC_vect) {
	uint8_t tmp = USART0.RXDATAL;
	flashEvent++;
	
	if (tmp == 'R') {
		ccp_write_io((void *) & (RSTCTRL.SWRR), 1);
	}
	else if (tmp == 'U') {
		SERIAL_SEND;
	}
}

ISR(SPI0_INT_vect) {
	gotBack = SPI0.DATA;
	
	sendWait = 0;
	SPI0.INTFLAGS = 0x80; // clear flags
}

ISR(PORTA_PORT_vect) {
	dealWithInterrupt = 1;
	flashEvent = 1;
	
	PORTA.INTFLAGS = 0xff; // clear interrupt flags
}
