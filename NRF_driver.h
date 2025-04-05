#ifndef NRF_DRIVER_H_
#define NRF_DRIVER_H_

#include "ti/devices/msp/m0p/mspm0g110x.h"
#include "Hardware.h"

#define SPI_WAIT_TRANSFER_COMPLETE while(SPI0->STAT & SPI_STAT_BUSY_MASK)
#define SPI_WAIT_FIFO_NOT_FULL while(~SPI0->STAT & (1 << SPI_STAT_TFE_MASK))
#define SPI_DATA(x) (SPI0->TXDATA = (x))

uint32_t volatile GotBack[5] = {0}; // idk how big the fifo is lol (I think it's 5 tho)

#define NRF_INIT_REGS_LENGTH 32
uint8_t static const NrfInitRegs[NRF_INIT_REGS_LENGTH] = {
    0x20, 0x0C,
    0x24, 0x55,
    0x3D, 0x04,
    0x3C, 0x3F,
    0x27, 0x7E,
    0x20, 0x7C,
    0x27, 0x7E,
    0xE1, 0x00,
    0xE2, 0x00,
    0x20, 0x7E,
    0x27, 0x0E,
    0x20, 0x7E,
    0x25, 0x02,
    0x26, 0x0F,
    0x23, 0x03,
    0x21, 0x3F
};
#define NRF_INIT_REGS_CHECK_LENGTH 9
uint8_t static const NrfInitRegsCheck[NRF_INIT_REGS_CHECK_LENGTH] = {
    0x00,
    0x04,
    0x1D,
    0x1C,
    0x07,
    0x05,
    0x06,
    0x03,
    0x01
};
uint8_t static const NrfInitRegsCheckValid[NRF_INIT_REGS_CHECK_LENGTH] = {
    0x7E,
    0x55,
    0x04,
    0x3F,
    0x0E,
    0x02,
    0x0F,
    0x03,
    0x3F
};

#define NRF_TRANSMIT_REGS_LENGTH 6
uint8_t static const NrfTransmitRegs[NRF_TRANSMIT_REGS_LENGTH] = {
    0x27, 0x0E,
    0x20, 0x5E,
    0x27, 0x7E,
};

void NRF_Init() {
    // init the nrf with basic settings
    for (uint32_t i = 0; i < (NRF_INIT_REGS_LENGTH - 1); i += 2) {
        HW_NRF_CS_CLR;
        SPI_DATA(NrfInitRegs[i]);
        SPI_DATA(NrfInitRegs[i + 1]);
        SPI_WAIT_TRANSFER_COMPLETE;
    }
    // check the reg states
    bool volatile regsCorrect = true;
    uint32_t volatile failedReg = UINT32_MAX;
    for (uint32_t i = 0; i < (NRF_INIT_REGS_CHECK_LENGTH); i++) {
        HW_NRF_CS_CLR;
        SPI_DATA(NrfInitRegsCheck[i]);
        SPI_DATA(0x00);
        SPI_WAIT_TRANSFER_COMPLETE;
        if (GotBack[1] != NrfInitRegsCheckValid[i]) {
            regsCorrect = false;
            failedReg = i;
            break;
        }
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
}

void GROUP1_IRQHandler() {
    switch (GPIOA->CPU_INT.IIDX) {
    case DL_GPIO_IIDX_DIO2: // IRQ falling edge
        GPIOA->DOUTTGL31_0 = 0b1 << 1;  // blink the yellow
        return;
    }
}

#endif