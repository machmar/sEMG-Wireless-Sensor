#include "Flash.h"
#include "FlashRegs.h"
#include "Hardware.h"
#include "ti/driverlib/dl_spi.h"
#include "ti/driverlib/m0p/dl_core.h"

#define SPI_WAIT_TRANSFER_COMPLETE while(SPI1->STAT & SPI_STAT_BUSY_MASK)
#define SPI_WAIT_FIFO_NOT_FULL while(~SPI1->STAT & (1 << SPI_STAT_TFE_MASK))
#define SPI_DATA(x) SPI_WAIT_FIFO_NOT_FULL; SPI1->TXDATA = (x)

uint32_t volatile spi_got_back_[10];
uint32_t volatile got_back_len_;
uint8_t *receive_data_;
uint32_t volatile save_locally_; ///< After this number of bytes start saving to provided buffer

FlashState_t Flash_Init() {
    for (uint32_t i = 0; i < 10; i++) spi_got_back_[i] = 0;
    got_back_len_ = 0;
    receive_data_ = 0; // NULLL isn't recongised for some reason
    save_locally_ = true;

    // check manufacturer ID
    HW_FLASH_CS_CLR;
    SPI_DATA(F_REG_RDID);
    SPI_DATA(0x00); // manufacturer ID
    SPI_DATA(0x00); // device ID
    SPI_DATA(0x00); // memory density
    SPI_WAIT_TRANSFER_COMPLETE;
    if (spi_got_back_[1] == 0xff || spi_got_back_[1] == 0x00) {
        return StateFlash_NotResponding;
    }

    return StateFlash_Idle;
}

FlashState_t Flash_ReadBytes(uint8_t *data, uint32_t address, uint32_t count) {
    return StateFlash_Idle;
}

FlashState_t Flash_Write(uint8_t *data, uint32_t address, uint8_t count) {
    return StateFlash_Idle;
}

FlashState_t Flash_Lock() {
    return StateFlash_Idle;
}

FlashState_t Flash_Unlock() {
    return StateFlash_Idle;
}

FlashState_t Flash_GetState() {
    return StateFlash_Idle;
}

void Flash_SPIHandler() {
    static uint32_t receive_pos = 0;

    switch(SPI1->CPU_INT.IIDX) {
    case DL_SPI_IIDX_RX_FULL:
        while ((~SPI1->STAT & SPI_STAT_RFE_EMPTY) && (receive_pos < UINT32_MAX)) {
            //I am really tried now, make this: receive pos < save_locally_ -> save to local buffer
            // if it's equal to or over, save to external buffer (from address 0, remove the local data offset)
            // when saving locally, check if it isn't over the 10 byte limit
            // when saving externally, check if the number (minus the local data offset) isn't over the set limit
            spi_got_back_[receive_pos] = SPI1->RXDATA;
            receive_pos++;
        }
        break;

    case DL_SPI_IIDX_IDLE:
        HW_FLASH_CS_SET;

        while ((~SPI1->STAT & SPI_STAT_RFE_EMPTY) && (receive_pos < UINT32_MAX)) {
            spi_got_back_[receive_pos] = SPI1->RXDATA;
            receive_pos++;
        }

        got_back_len_ = receive_pos;
        receive_pos = 0;
        break;
    }
}
