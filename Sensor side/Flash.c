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
uint32_t receive_data_size_; ///<Mostly a safety check, shouldn't ever be needed anyway.
uint32_t volatile save_locally_; ///< After this number of bytes start saving to provided buffer

FlashState_t Flash_Init() {
    for (uint32_t i = 0; i < 10; i++) spi_got_back_[i] = 0;
    got_back_len_ = 0;
    receive_data_ = 0; // NULL isn't recognised for some reason
    receive_data_size_ = 0;
    save_locally_ = 0;

    // check manufacturer ID
    HW_FLASH_CS_CLR;
    SPI_DATA(F_REG_RDID);
    SPI_DATA(0x00); // manufacturer ID
    SPI_WAIT_TRANSFER_COMPLETE;
    if (spi_got_back_[1] == 0xff || spi_got_back_[1] == 0x00) {
        return StateFlash_NotResponding;
    }

    return StateFlash_Idle;
}

FlashState_t Flash_Read(uint8_t *data, uint32_t address, uint32_t count) {
    FlashState_t tmp = Flash_GetState();
    if (tmp != StateFlash_Idle && tmp != StateFlash_Locked) return tmp; // check if it's in idle

    // save the needed variables
    save_locally_ = 4;
    receive_data_size_ = count;
    receive_data_ = data;

    HW_FLASH_CS_CLR;
    SPI_DATA(F_REG_READ);
    SPI_DATA((address & 0x00ff0000) >> 16);
    SPI_DATA((address & 0x0000ff00) >> 8);
    SPI_DATA((address & 0x000000ff) >> 0);
    for (uint32_t i = 0; i < count; i++) {
        SPI_DATA(0x00); // reading bytes out from the memory
    }
    SPI_WAIT_TRANSFER_COMPLETE;

    return Flash_GetState();
}

FlashState_t Flash_Write(uint8_t *data, uint32_t address, uint32_t count) {
    FlashState_t tmp = Flash_GetState();
    if (tmp != StateFlash_Idle) return tmp; // check if it's in idle

    
    for (uint32_t i = 0; i < 8; i++) { // try to set the bit 8 times
        // enable write
        HW_FLASH_CS_CLR;
        SPI_DATA(F_REG_WREN);
        SPI_WAIT_TRANSFER_COMPLETE;

        // check if write is enabled
        HW_FLASH_CS_CLR;
        SPI_DATA(F_REG_RDSR);
        SPI_DATA(0x00);
        SPI_WAIT_TRANSFER_COMPLETE;
        if (spi_got_back_[1] & (1 << 1)) goto exitWriteEnableLoop; // using goto just to be sure

        if (i == 7) return Flash_GetState();
    }
    exitWriteEnableLoop:

    // write reg and address
    save_locally_ = 0; // it stops saving after the 10 byte limit is reached (we don't care about the data)
    HW_FLASH_CS_CLR;
    SPI_DATA(F_REG_PP);
    SPI_DATA((address & 0x00ff0000) >> 16);
    SPI_DATA((address & 0x0000ff00) >> 8);
    SPI_DATA((address & 0x000000ff) >> 0);
    for (uint32_t i = 0; i < count && i < 256; i++) {
        SPI_DATA(data[i]); // writing a byte to the memory
    }
    SPI_WAIT_TRANSFER_COMPLETE;

    return Flash_GetState();
}

FlashState_t Flash_Lock() { // not implemented (don't care)
    return StateFlash_NotResponding;
}

FlashState_t Flash_Unlock() { // not implemented (don't care)
    return StateFlash_NotResponding;
}

FlashState_t Flash_GetState() {
    HW_FLASH_CS_CLR;
    SPI_DATA(F_REG_RDSR);
    SPI_DATA(0x00);
    SPI_WAIT_TRANSFER_COMPLETE;
    if (spi_got_back_[1] & (1 << 0)) return StateFlash_Writing;
    else if (spi_got_back_[1] & (0b1111 << 2)) return StateFlash_Locked;
    else if (spi_got_back_[1] != 0x00 && spi_got_back_[1] != 0xff) return StateFlash_Idle;
    else {
        // check manufacturer ID
        HW_FLASH_CS_CLR;
        SPI_DATA(F_REG_RDID);
        SPI_DATA(0x00); // manufacturer ID
        SPI_WAIT_TRANSFER_COMPLETE;
        if (spi_got_back_[1] == 0xff || spi_got_back_[1] == 0x00) {
            return StateFlash_NotResponding;
        }
    }
    return StateFlash_Idle;
}

void Flash_SPIHandler() {
    static uint32_t receive_pos = 0;

    switch(SPI1->CPU_INT.IIDX) {
    case DL_SPI_IIDX_RX_FULL:
        // save externally if it's requested, or locally
        while ((~SPI1->STAT & SPI_STAT_RFE_EMPTY) && (receive_pos < UINT32_MAX)) {
            if (receive_pos >= save_locally_ && save_locally_ > 0) {
                // prevent going out of the array and null dereference
                if (((receive_pos - save_locally_) < receive_data_size_) && receive_data_ != 0) {
                    receive_data_[receive_pos - save_locally_] = SPI1->RXDATA;
                }
            }
            else  {
                if (receive_pos < 10) {
                    spi_got_back_[receive_pos] = SPI1->RXDATA;
                }
                else {
                    uint8_t dont_care = SPI1->RXDATA; // have to read from the RX fifo to exit this interrupt loop
                }
            }
            receive_pos++;
        }
        break;

    case DL_SPI_IIDX_IDLE:
        HW_FLASH_CS_SET;
        // save externally if it's requested, or locally
        while ((~SPI1->STAT & SPI_STAT_RFE_EMPTY) && (receive_pos < UINT32_MAX)) {
            if (receive_pos >= save_locally_ && save_locally_ > 0) {
                // prevent going out of the array and null dereference
                if (((receive_pos - save_locally_) < receive_data_size_) && receive_data_ != 0) {
                    receive_data_[receive_pos - save_locally_] = SPI1->RXDATA;
                }
            }
            else  {
                if (receive_pos < 10) {
                    spi_got_back_[receive_pos] = SPI1->RXDATA;
                }
                else {
                    uint8_t dont_care = SPI1->RXDATA; // have to read from the RX fifo to exit this interrupt loop
                }
            }
            receive_pos++;
        }

        got_back_len_ = receive_pos;
        receive_pos = 0;
        receive_data_ = 0;
        receive_data_size_ = 0;
        save_locally_ = 0;
        break;
    }
}
