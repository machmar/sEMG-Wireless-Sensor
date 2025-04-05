#include "NRFDriver.h"
#include "Hardware.h"
#include "NRFDriverRegs.h"
#include "ti/driverlib/dl_spi.h"
#include "ti/driverlib/m0p/dl_core.h"

#define SPI_WAIT_TRANSFER_COMPLETE while(SPI0->STAT & SPI_STAT_BUSY_MASK)
#define SPI_WAIT_FIFO_NOT_FULL while(~SPI0->STAT & (1 << SPI_STAT_TFE_MASK))
#define SPI_DATA(x) (SPI0->TXDATA = (x))

uint32_t volatile got_back_[32] = {0};
uint32_t volatile got_back_len_ = 0;

bool volatile regsCorrect = true;
uint32_t volatile failedReg = UINT32_MAX;

// TODO: make max retries also interrupt based
/* TODO:
    make max retries also interrupt based
    make the set data function check if the previous data was sent out
*/

void GoStandby() {
    // clear interrupts, go to standby
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0x27);
    SPI_DATA(0x70); // clear all interrupt states
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0x20);
    SPI_DATA(0x5E); // transmit, power up, 2 byte crc, enable crc, TX_DS interrupt enabled
}

void FlushFIFOTX() {
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0xE1);
}

void FlushFIFORX() {
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0xE2);
}

void FlushFIFOs() {
    FlushFIFOTX();
    FlushFIFORX();
}

bool NRF_Init() {
    // init the nrf with basic settings
    for (uint32_t i = 0; i < (NRF_INIT_REGS_LENGTH - 1); i += 2) {
        HW_NRF_CS_CLR;
        SPI_DATA(NrfInitRegs[i]);
        SPI_DATA(NrfInitRegs[i + 1]);
        SPI_WAIT_TRANSFER_COMPLETE;
    }
    // check the reg states
    for (uint32_t i = 0; i < (NRF_INIT_REGS_CHECK_LENGTH); i++) {
        HW_NRF_CS_CLR;
        SPI_DATA(NrfInitRegsCheck[i]);
        SPI_DATA(0x00);
        SPI_WAIT_TRANSFER_COMPLETE;
        if (got_back_[1] != NrfInitRegsCheckValid[i]) {
            regsCorrect = false; 
            failedReg = i;
            break;
        }
    }
    if (!regsCorrect) {
        return 0;
    }

    // enable tranmission, set adresses fro transmit and receive pipes (for ack)
    for (uint32_t i = 0; i < (NRF_TRANSMIT_REGS_LENGTH - 1); i += 2) {
        HW_NRF_CS_CLR;
        SPI_DATA(NrfTransmitRegs[i]);
        SPI_DATA(NrfTransmitRegs[i + 1]);
        SPI_WAIT_TRANSFER_COMPLETE;
    }
    // out pipe address
    HW_NRF_CS_CLR;
    SPI_DATA(0x30);
    SPI_DATA(0x01);
    SPI_DATA(0x23);
    SPI_DATA(0x45);
    SPI_DATA(0x67);
    SPI_WAIT_FIFO_NOT_FULL; // wait till theres space in the fifo
    SPI_DATA(0x89);
    SPI_WAIT_TRANSFER_COMPLETE;
    // in pipe address (using pipe 0)
    HW_NRF_CS_CLR;
    SPI_DATA(0x2A);
    SPI_DATA(0x01);
    SPI_DATA(0x23);
    SPI_DATA(0x45);
    SPI_DATA(0x67);
    SPI_WAIT_FIFO_NOT_FULL; // wait till theres space in the fifo
    SPI_DATA(0x89);
    SPI_WAIT_TRANSFER_COMPLETE;
    // SET TX, enable interrupt, clear fifo
    HW_NRF_CS_CLR;
    SPI_DATA(0x20);
    SPI_DATA(0x5E);
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0xE1);
    SPI_WAIT_TRANSFER_COMPLETE;

    return 1;
}

void NRF_IRQHandler() {
    HW_LED_YEL_TGL;
}

void NRF_SPIHandler() {
    static uint32_t receive_pos = 0;

    switch(SPI0->CPU_INT.IIDX) {
    case DL_SPI_IIDX_RX_FULL:
        while ((~SPI0->STAT & SPI_STAT_RFE_EMPTY) && (receive_pos < 32)) {
            got_back_[receive_pos] = SPI0->RXDATA;
            receive_pos++;
        }
        break;

    case DL_SPI_IIDX_IDLE:
        HW_NRF_CS_SET;

        while ((~SPI0->STAT & SPI_STAT_RFE_EMPTY) && (receive_pos < 32)) {
            got_back_[receive_pos] = SPI0->RXDATA;
            receive_pos++;
        }

        got_back_len_ = receive_pos;
        receive_pos = 0;
        break;
    }

}

bool NRF_TXPipe(uint64_t address) {
    uint8_t address_bytes[5];

    GoStandby();
    FlushFIFOs();

    // set transmit address
    HW_NRF_CS_CLR;
    SPI_DATA(0x30);
    for (uint8_t i = 0; i < 5; i++) {
        address_bytes[i] = (address & (uint64_t)(0xff << (8 * i))) >> (8 * i);
        SPI_DATA(address_bytes[i]);
        SPI_WAIT_FIFO_NOT_FULL;
    }
    SPI_WAIT_TRANSFER_COMPLETE;

    // check the values
    HW_NRF_CS_CLR;
    SPI_DATA(0x10);
    for (uint8_t i = 0; i < 5; i++) {
        SPI_DATA(0x00);
        SPI_WAIT_FIFO_NOT_FULL;
    }
    SPI_WAIT_TRANSFER_COMPLETE;
    for (uint8_t i = 0; i < 5; i++) {
        if (address_bytes[i] != got_back_[i + 1]) return false;
    }

    // set receive address (for acks)
    HW_NRF_CS_CLR;
    SPI_DATA(0x2A);
    for (uint8_t i = 0; i < 5; i++) {
        SPI_DATA(address_bytes[i]);
        SPI_WAIT_FIFO_NOT_FULL;
    }

    // check the values
    HW_NRF_CS_CLR;
    SPI_DATA(0x0A);
    for (uint8_t i = 0; i < 5; i++) {
        SPI_DATA(0x00);
        SPI_WAIT_FIFO_NOT_FULL;
    }
    SPI_WAIT_TRANSFER_COMPLETE;
    for (uint8_t i = 0; i < 5; i++) {
        if (address_bytes[i] != got_back_[i + 1]) return false;
    }

    return true;
}

void NRF_TXSetData(uint8_t *data, uint8_t len) {
    // clear interrupts, go to standby
    GoStandby();

    // flush TX fifo
    FlushFIFOs();

    // transmit the payload
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0xA0);
    for (uint8_t i = 0; (i < 32) && (i < len); i++) {
        SPI_DATA(data[i]);
        SPI_WAIT_FIFO_NOT_FULL;
    }
}

void NRF_TXTransmit() {
    HW_NRF_CE_SET;
    delay_cycles(1000);
    HW_NRF_CE_CLR;
}

NRF_State_t NRF_TXCheckAcks() {
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0xff);
    SPI_WAIT_TRANSFER_COMPLETE;
    
    if (got_back_[0] & 1 << 4) {
        return TransmitFailed;
    }
    else if (got_back_[0] & 1 << 5) {
        return TransmitSuccess;
    }
    return TransmitWait;
}

bool NRF_TXCheckAcksBlocking() {
    while (1) {
        SPI_WAIT_TRANSFER_COMPLETE;
        HW_NRF_CS_CLR;
        SPI_DATA(0xff);
        SPI_WAIT_TRANSFER_COMPLETE;
        
        if (got_back_[0] & 1 << 4) {
            return false;
        }
        else if (got_back_[0] & 1 << 5) {
            return true;
        }
    }
    return false;
}
