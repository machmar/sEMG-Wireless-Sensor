#include "TransmitFifo.h"

uint8_t fifoTypeBytes[10];
uint8_t fifoDataBytes[10];
uint32_t writePos = 0;
uint32_t readPos = 0;
uint32_t capacity = 0;

void TransmitFifo_Init() {
    for (uint32_t i = 0; i < sizeof(fifoTypeBytes); i++) {
        fifoTypeBytes[i] = 0;
        fifoDataBytes[i] = 0;
    }
    writePos = 0;
    readPos = 0;
    capacity = 0;
}

bool TransmitFifo_Add(uint8_t newType, uint8_t dataByte) {
    if (capacity < 10) {
        capacity++;
        fifoTypeBytes[writePos] = newType;
        fifoDataBytes[writePos] = dataByte;
        if (writePos < 9) writePos++;
        else writePos = 0;
        return true;
    }
    else return false;
}

bool TransmitFifo_Get(uint8_t *getType, uint8_t *dataByte) {
    if (capacity >= 1) {
        capacity--;
        *getType = fifoTypeBytes[readPos];
        *dataByte = fifoDataBytes[readPos];
        if (readPos < 9) readPos++;
        else readPos = 0;
        return true;
    }
    else return false;
}