#ifndef  TRANSMIT_FIFO_H_
#define TRANSMIT_FIFO_H_

#include "ti/driverlib/m0p/dl_core.h"


void TransmitFifo_Init();

bool TransmitFifo_Add(uint8_t newType, uint8_t dataByte);

bool TransmitFifo_Get(uint8_t *getType, uint8_t *dataByte);


#endif