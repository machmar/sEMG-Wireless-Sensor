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
bool interruptReceived = false;
NRF_State_t directionsMode = State_Transmit;
NRF_State_t receiveState = State_ReceiveWait;

/* TODO:
    make max retries also interrupt based
    make the set data function check if the previous data was sent out
*/

void GoStandbyTX() {
    // clear interrupts, go to standby
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0x27);
    SPI_DATA(0x7E); // clear all interrupt states
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0x20);
    SPI_DATA(0x4E); // transmit, power up, 2 byte crc, enable crc, TX_DS and MAX_RT interrupts enabled
}

void GoStandbyRX() {
    // clear interrupts, go to standby
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0x27);
    SPI_DATA(0x7E); // clear all interrupt states
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0x20);
    SPI_DATA(0x3F); // receive, power up, 2 byte crc, enable crc, RX_DR interrupt enabled
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
    directionsMode = State_Transmit;

    // init variables (something resets them at init)
    for (uint8_t i = 0; i < 32; i++) got_back_[i] = 0;
    got_back_len_ = 0;

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
    if (directionsMode == State_Transmit) {
        interruptReceived = true;
    }
    else if (directionsMode == State_Receive) {
        receiveState = State_ReceiveReady;
    }
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

bool NRF_TXPipe(uint64_t address) { // this is broken (confirmation doesn't work)
    uint8_t address_bytes[5];

    GoStandbyTX();
    FlushFIFOs();

    // set transmit address
    HW_NRF_CS_CLR;
    SPI_DATA(0x30);
    for (uint8_t i = 0; i < 5; i++) {
        uint8_t x = 4 - i;
        address_bytes[i] = (uint8_t)((address >> (8 * x)) & 0xff);
        SPI_DATA(address_bytes[i]);
        SPI_WAIT_FIFO_NOT_FULL;
    }
    SPI_WAIT_TRANSFER_COMPLETE;

    // check the values
    for (uint8_t i = 0; i < 32; i++) got_back_[i] = 0;
    HW_NRF_CS_CLR;
    SPI_DATA(0x10);
    for (uint8_t i = 0; i < 5; i++) {
        SPI_DATA(0x00);
        SPI_WAIT_FIFO_NOT_FULL;
    }
    SPI_WAIT_TRANSFER_COMPLETE;
    for (uint8_t i = 0; i < 5; i++) {
        if (address_bytes[i] != got_back_[i + 1]);// return false;
    }
    delay_cycles(10);
    // set receive address (for acks)
    HW_NRF_CS_CLR;
    SPI_DATA(0x2A);
    for (uint8_t i = 0; i < 5; i++) {
        SPI_DATA(address_bytes[i]);
        SPI_WAIT_FIFO_NOT_FULL;
    }

    // check the values
    for (uint8_t i = 0; i < 32; i++) got_back_[i] = 0;
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

void NRF_TXSetData(uint8_t *dataSend, uint8_t len) {
    HW_NRF_CE_CLR; // in case it was left on from waiting for receive
    directionsMode = State_Transmit;

    // clear interrupts, go to standby
    GoStandbyTX();

    // flush TX fifo
    FlushFIFOs();

    // transmit the payload
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CS_CLR;
    SPI_DATA(0xA0);
    for (uint8_t i = 0; (i < 32) && (i < len); i++) {
        SPI_DATA(dataSend[i]);
        SPI_WAIT_FIFO_NOT_FULL;
    }
}

void NRF_TXTransmit() {
    SPI_WAIT_TRANSFER_COMPLETE;
    HW_NRF_CE_SET;
    delay_cycles(100); // @32MHz anything less is unreliable
    HW_NRF_CE_CLR;
}

NRF_State_t NRF_CheckState() {
    if (directionsMode == State_Transmit) {
        if (!interruptReceived) return State_TransmitWait;
        interruptReceived = false;
        SPI_WAIT_TRANSFER_COMPLETE;
        HW_NRF_CS_CLR;
        SPI_DATA(0xff);
        SPI_WAIT_TRANSFER_COMPLETE;
        
        if (got_back_[0] & 1 << 4) {
            return State_TransmitFailed;
        }
        else if (got_back_[0] & 1 << 5) {
            return State_TransmitSuccess;
        }
        return State_TransmitWait;
    }
    else if (directionsMode == State_Receive) {
        return receiveState;
    }
    else {
        directionsMode = State_Transmit;
        return State_Transmit;
    }
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

void NRF_RXStart() {
    directionsMode = State_Receive;
    HW_NRF_CE_CLR;
    GoStandbyRX();
    FlushFIFOs();
    HW_NRF_CE_SET;
    receiveState = State_ReceiveWait;
}

NRF_State_t NRF_DirectionState() {
    return directionsMode;
}

NRF_State_t NRF_RXGet(uint8_t *buffer, uint32_t *length) {
    if (receiveState != State_ReceiveReady) return receiveState;
    HW_NRF_CE_CLR;
    HW_NRF_CS_CLR;
    SPI_DATA(0x60);
    SPI_DATA(0x00);
    SPI_WAIT_TRANSFER_COMPLETE;
    uint32_t dataWidth = got_back_[1];
    HW_NRF_CS_CLR;
    SPI_DATA(0x61);
    for (uint32_t i = 0; i < dataWidth; i++) {
        SPI_DATA(0x00);
        SPI_WAIT_FIFO_NOT_FULL;
    }
    SPI_WAIT_TRANSFER_COMPLETE;

    for (uint32_t i = 0; i < dataWidth; i++) {
        buffer[i] = got_back_[i + 1];
    }
    
    *length = dataWidth;
    receiveState = State_ReceiveIdle;
    GoStandbyRX();
    return State_ReceiveReady;
}
