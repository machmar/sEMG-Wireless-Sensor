#ifndef NRF_DRIVER_H_
#define NRF_DRIVER_H_

#include "ti/devices/msp/m0p/mspm0g110x.h"
#include "Hardware.h"

typedef enum {
    State_TransmitWait,
    State_TransmitFailed,
    State_TransmitSuccess,
    State_Transmit,
    State_Receive,
    State_ReceiveWait,
    State_ReceiveReady,
    State_ReceiveIdle
} NRF_State_t;

bool NRF_Init();

NRF_State_t NRF_CheckState();

NRF_State_t NRF_DirectionState();

bool NRF_TXPipe(uint64_t address);

void NRF_TXSetData(uint8_t *dataSend, uint8_t len);

void NRF_TXTransmit();

bool NRF_TXCheckAcksBlocking();

void NRF_RXStart();

NRF_State_t NRF_RXGet(uint8_t *buffer, uint32_t *length);

void NRF_IRQHandler();

void NRF_SPIHandler();

#endif