#ifndef FLASH_H_
#define FLASH_H_

#include "ti/devices/msp/m0p/mspm0g110x.h"

/* FLASH SPEED writing 10 pages (2560 bytes) @ SPI clock 1MHz:
 * 2.9851V 24.5°C
 *      16.984ms
 *      16.986ms
 *      16.989ms
 *      16.987ms
 *      16.995ms
 * 2.4500V 24.5°C
 *      17.040ms
 *      17.037ms
 *      17.033ms
 *      17.045ms
 *      17.545ms
 * 2.9V cooled till frost appeared
 *      17.540ms
 *      17.440ms
 *      17.537ms
 *      17.545ms
 * 2.9V 60°C
 *      17.455ms
 *      17.530ms
 */

typedef enum {
    StateFlash_Idle,
    StateFlash_Writing,
    StateFlash_Locked,
    StateFlash_NotResponding
} FlashState_t;


FlashState_t Flash_Init();

FlashState_t Flash_Read(uint8_t *data, uint32_t address, uint32_t count);

FlashState_t Flash_Write(uint8_t *data, uint32_t address, uint32_t count);

FlashState_t Flash_Lock(); // not implemented (don't care)

FlashState_t Flash_Unlock(); // not implemented (don't care)

FlashState_t Flash_GetState();

void Flash_SPIHandler();

#endif