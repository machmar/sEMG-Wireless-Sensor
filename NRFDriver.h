#ifndef NRF_DRIVER_H_
#define NRF_DRIVER_H_

#include "ti/devices/msp/m0p/mspm0g110x.h"
#include "Hardware.h"

typedef enum {
    TransmitWait,
    TransmitFailed,
    TransmitSuccess
} NRF_State_t;

bool NRF_Init();

void NRF_IRQHandler();

void NRF_SPIHandler();

bool NRF_TXPipe(uint64_t address);

void NRF_TXSetData(uint8_t *data, uint8_t len);

void NRF_TXTransmit();

NRF_State_t NRF_TXCheckAcks();

bool NRF_TXCheckAcksBlocking();


#endif