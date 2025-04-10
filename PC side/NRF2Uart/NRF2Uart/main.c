/*
 * PCController.c
 *
 * Created: 4/6/2025 1:18:47 PM
 * Author : marec
 */ 

#include <avr/io.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include "util/delay.h"

#define SERIAL_SEND USART0.CTRLA = 0b10100000
#define SPI_SEND(x) while(sendWait); SPI0.DATA = (x); sendWait = 1
#define CS_LOW PORTB.OUTCLR = 1 << 0
#define CS_HIGH while(sendWait); PORTB.OUTSET = 1 << 0; for (uint16_t i = 0; i < 1000; i++)
#define CE_LOW PORTA.OUTCLR = 1 << 4
#define CE_HIGH PORTA.OUTSET = 1 << 4
#define SPI_SEND_REG(x, y) CS_LOW; SPI_SEND(x); SPI_SEND(y); CS_HIGH
#define NRF_CLEAR_AND_IDLE SPI_SEND_REG(0x27, 0x7E); SPI_SEND_REG(0x20, 0x7E)

typedef uint32_t millis_t;
millis_t inline GetMillis();
millis_t inline GetMillisEigths();
uint8_t volatile flashEvent = 0;
void inline AddFlashEvent();

millis_t broadcastPMill = 0;

char replyBuf[50] = "Ahhoj haha\n\n\n";
char sendData[35] = {0};
_Bool volatile sendWait = 0;
uint8_t volatile gotBack = 0;
_Bool volatile dealWithInterrupt = 0;
uint8_t volatile dealWithTransmission = 0;
uint8_t volatile receivingTransmitData = 0;

typedef enum {
	State_Idle,
	State_ReceptionWait,
	State_ReceptionReady,
	State_TransmissionStart,
	State_TransmissionWait,
	State_TransmissionConfirm
} NRF_State_t;

NRF_State_t NRFState = State_Idle;

int main(void)
{
    //setup system clock (20MHz)
    ccp_write_io((void *) & (CLKCTRL.MCLKCTRLA), 0x0);
    ccp_write_io((void *) & (CLKCTRL.MCLKCTRLB), 0x0);
    ccp_write_io((void *) & (CLKCTRL.OSC20MCTRLA), 0b10);
    while(CLKCTRL.MCLKSTATUS & 1);
	
	_delay_ms(1000); // seems to be some issue with boot, trying to fix it
	
	if (RSTCTRL.RSTFR & 1 << 5) {
		strcpy(replyBuf, "\n\nFlashed, starting!\n\n\n");
	}
	else if (RSTCTRL.RSTFR & 1 << 4) {
		strcpy(replyBuf, "\n\nUp again, starting!\n\n\n");
	}
	else if (RSTCTRL.RSTFR & 1 << 3) {
		strcpy(replyBuf, "\n\nWatchdog Crash!, starting!\n\n\n");
	}
	else if (RSTCTRL.RSTFR & 1 << 0) {
		strcpy(replyBuf, "\n\nAhhoj haha, starting!\n\n\n");
	}
	else {
		strcpy(replyBuf, "\n\nIdk how that happenned, starting!\n\n\n");
	}
	RSTCTRL.RSTFR = 0x3F; // clear reset source
	
	ccp_write_io((void *) & (WDT.CTRLA), 0xB); // watchdog at 8 seconds
	wdt_reset();
	
	SPI0.CTRLA = SPI_MASTER_bm | SPI_ENABLE_bm | 0b010; // MSB, Master, div by 16
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
	
	RTC.PITCTRLA = (0x1 << 3) | 1; // PIT every 4 cycles (8kHz - 125us), enabled
	while(RTC.PITSTATUS & 0b1); // wait for sync
	RTC.PITINTCTRL = 0b1; // enable interrupt
	
	PORTA.PIN5CTRL = (1 << 3) | 0x3; // enabled pullup, interrupt on falling edge
	PORTB.DIRSET = 1 << 1; // enable LED output
	PORTB.OUTSET = 1 << 1; // set LED on
	
	sei();
	
	wdt_reset();
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
	wdt_reset();
	
	SPI_SEND_REG(0x01, 0x00);
	while (gotBack != 0x3F) {
		PORTB.OUTTGL = 1 << 1; // flash LED
		_delay_ms(50);
		wdt_reset();
	}
		
	// set receive address (pipe 0)
	NRF_CLEAR_AND_IDLE;
	CS_LOW;
	SPI_SEND(0x2A);
	SPI_SEND(0x01);
	SPI_SEND(0x23);
	SPI_SEND(0x45);
	SPI_SEND(0x67);
	SPI_SEND(0x89);
	CS_HIGH;
	SPI_SEND_REG(0x22, 0x01); // enable data pipe 0
	
	// set transmit address
	NRF_CLEAR_AND_IDLE;
	CS_LOW;
	SPI_SEND(0x30);
	SPI_SEND(0x01);
	SPI_SEND(0x23);
	SPI_SEND(0x45);
	SPI_SEND(0x67);
	SPI_SEND(0x89);
	CS_HIGH;
	SPI_SEND_REG(0x22, 0x01); // enable data pipe 0
	wdt_reset();
	
	
	NRFState = State_Idle;
		
    while (1) {
		// LED stuff
		if (flashEvent) {
			static millis_t blinkPMill = 0;
			if (GetMillis() - blinkPMill >= 50) {
				blinkPMill = GetMillis();
				static uint8_t flashStage = 0;
				switch (flashStage) {
				case 0:
				case 1:
					flashStage++;
					PORTB.OUTTGL = 1 << 1; // flash LED
					break;
				case 2:
					flashEvent--;
					flashStage = 0;
				}
			}
		}
		else {
			static millis_t blinkPMill = 0;
			if (GetMillis() - blinkPMill > 1500) {
				blinkPMill = GetMillis();
				PORTB.OUTTGL = 1 << 1; // flash LED
			}
		}
		
		switch (NRFState) {
		case State_Idle:
			NRF_CLEAR_AND_IDLE;
			SPI_SEND_REG(0x20, 0x3F); // enable receive interrupt, RX mode
			SPI_SEND_REG(0xE2, 0x00); // flush RX fifo
			CE_HIGH; // enable reception amp
			NRFState = State_ReceptionWait;
			break;
			
		case State_ReceptionWait:
			if (dealWithInterrupt) {
				dealWithInterrupt = 0;
				CE_LOW;
				NRFState = State_ReceptionReady;
			}
			if (dealWithTransmission && GetMillis() - broadcastPMill > 30000) { // not received anything in 30s, send stuff right away
				NRFState = State_TransmissionStart;
			}
			break;
			
		case State_ReceptionReady:
			NRF_CLEAR_AND_IDLE;
			SPI_SEND_REG(0x60, 0x00); // get received data width
			uint8_t dataWidth = gotBack;
			CS_LOW;
			SPI_SEND(0x61); // start received data transmission
			for (uint8_t i = 0; i < dataWidth; i++) {
				SPI_SEND(0x00); // getting data
				while(sendWait);
				replyBuf[i] = gotBack;
			}
			replyBuf[dataWidth - 1] = '\n';	// !!!THIS IS TEMPORARY AND BAD, IT DELETES LAST BYTE OF TRANSMISSION, ONLY FOR TESTING, REMOVE!!!
			replyBuf[dataWidth] = 0;
			SERIAL_SEND;
			
			SPI_SEND_REG(0x27, 0x7E);
			
			if (dealWithTransmission != 0) {
				NRFState = State_TransmissionStart;
			}
			else NRFState = State_Idle;
			break;
		
		case State_TransmissionStart:
			NRF_CLEAR_AND_IDLE;
			SPI_SEND_REG(0x20, 0x4E); // enable interrupt for got acks and max retries, TX mode
			SPI_SEND_REG(0xE1, 0x00); // flush TX fifo
			//fill fifo
			CS_LOW;
			SPI_SEND(0xA0); // start transmit data transmission
			for (uint8_t i = 0; i < dealWithTransmission; i++) {
				SPI_SEND(sendData[i]);
				while(sendWait);
			}
			CS_HIGH;
			CE_HIGH;
			dealWithTransmission = 0;
			broadcastPMill = GetMillis();
			NRFState = State_TransmissionWait;
			break;
			
		case State_TransmissionWait:
			if (GetMillis() - broadcastPMill > 1) CE_LOW;
			
			if (dealWithInterrupt) {
				dealWithInterrupt = 0;
				CS_LOW;
				SPI_SEND(0xff); // get status byte
				CS_HIGH;
				if (gotBack & (1 << 5)) { // successful transfer
					NRFState = State_TransmissionConfirm;
				}
				else if (gotBack & (1 << 4)) { // failed transmission
					strcpy(replyBuf, "Error: Ack not received!");
					SERIAL_SEND;
					NRFState = State_Idle;
				}
				NRF_CLEAR_AND_IDLE;
			}
			if (GetMillis() - broadcastPMill > 10000) {
				CS_LOW;
				SPI_SEND(0xff);
				CS_HIGH;
				sprintf(replyBuf, "Error: No interrupt in 10s, State: %02X", gotBack);
				SERIAL_SEND;
				NRFState = State_Idle;
			}
			break;
			
		case State_TransmissionConfirm:
			// not really sure what to do here lol
			NRFState = State_Idle;
			break;
			
		default:
			NRFState = State_Idle;
			break;
		}
		
		wdt_reset(); // 8s timeout, should be plenty and prevent SPI hang
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
	uint8_t received = USART0.RXDATAL;
	static uint8_t numBytesExpected = 0;
	
	if (receivingTransmitData == 0)
	{
		switch (received) {
		case 'R': // reset
			ccp_write_io((void *) & (RSTCTRL.SWRR), 1);
			break;
			
		case 'U': // resend last received data
			SERIAL_SEND;
			break;
			
		case 'T': // transmit data to sensor
			receivingTransmitData = 1;
			numBytesExpected = 0;
			break;
			
		case 'S':
			switch(NRFState) {
			case State_Idle:
				strcpy(replyBuf, "Idle");
				SERIAL_SEND;
				break;
				
			case State_ReceptionWait:
				strcpy(replyBuf, "ReceptionWait");
				SERIAL_SEND;
				break;
				
			case State_ReceptionReady:
				strcpy(replyBuf, "ReceptionReady");
				SERIAL_SEND;
				break;

			case State_TransmissionStart:
				strcpy(replyBuf, "TransmissionStart");
				SERIAL_SEND;
				break;

			case State_TransmissionWait:
				strcpy(replyBuf, "TransmissionWait");
				SERIAL_SEND;
				break;

			case State_TransmissionConfirm:
				strcpy(replyBuf, "TransmissionConfirm");
				SERIAL_SEND;
				break;

			default:
				strcpy(replyBuf, "UnknownState");
				SERIAL_SEND;
				break;
			}
		}
	}
	else {
		if (receivingTransmitData == 1) {
			if (received > 32) {
				strcpy(replyBuf, "Error: max length 32!");
				receivingTransmitData = 0;
				SERIAL_SEND;
			}
			else {
				numBytesExpected = received;
				receivingTransmitData = 2;
			}
		}
		else {
			if (receivingTransmitData < (numBytesExpected + 2)) {
				sendData[receivingTransmitData - 2] = received;
				receivingTransmitData++;
			}
			else {
				dealWithTransmission = receivingTransmitData - 2;
				receivingTransmitData = 0;
				broadcastPMill = GetMillis();
			}
		}
	}

	AddFlashEvent();
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

millis_t millis = 0;
millis_t millisEights = 0;
ISR(RTC_PIT_vect) {
	static uint8_t millisScaler = 0;
	millisScaler++;
	millisEights++;
	if (millisScaler == 7) {
		millis++;
		millisScaler = 0;
	}
	RTC.PITINTFLAGS = 0b1; // clear the flag
}

millis_t inline GetMillis() {
	return millis;
}

millis_t inline GetMillisEigths() {
	return millisEights;
}

void AddFlashEvent() {
	if (flashEvent < 100) flashEvent++; //limit the number of events to 100
}
