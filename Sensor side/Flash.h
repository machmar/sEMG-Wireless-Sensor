#ifndef FLASH_H_
#define FLASH_H_

#include "ti/devices/msp/m0p/mspm0g110x.h"

typedef enum {
    StateFlash_Idle,
    StateFlash_Writing,
    StateFlash_Locked,
    StateFlash_NotResponding
} FlashState_t;


FlashState_t Flash_Init();

FlashState_t Flash_ReadBytes(uint8_t *data, uint32_t address, uint32_t count);

FlashState_t Flash_Write(uint8_t *data, uint32_t address, uint8_t count);

FlashState_t Flash_Lock();

FlashState_t Flash_Unlock();

FlashState_t Flash_GetState();

void Flash_SPIHandler();

#endif