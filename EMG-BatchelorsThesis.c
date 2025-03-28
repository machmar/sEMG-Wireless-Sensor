/*
 * Copyright (c) 2023, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "ti/driverlib/dl_gpio.h"
#include "ti/driverlib/m0p/dl_core.h"
#include "ti_msp_dl_config.h"
#include "ti/devices/msp/m0p/mspm0g110x.h"
//#include <cstdint>

#define SPI_CS_LOW (GPIOB->DOUTCLR31_0 = 1 << 4)
#define SPI_CS_HIGH (GPIOB->DOUTSET31_0 = 1 << 4)
#define SPI_WAIT_TRANSFER_COMPLETE while(SPI0->STAT & SPI_STAT_BUSY_MASK)
#define SPI_WAIT_FIFO_NOT_FULL while(~SPI0->STAT & (1 << SPI_STAT_TFE_MASK))
#define SPI_DATA(x) (SPI0->TXDATA = (x))
#define NRF_CE_HIGH (GPIOB->DOUTSET31_0 = 1 << 3)
#define NRF_CE_LOW (GPIOB->DOUTCLR31_0 = 1 << 3)

uint32_t volatile GotBack = 0; // idk how big the fifo is lol (I think it's 5 tho)
uint32_t cnt = 0;

int main(void)
{
    delay_cycles(1000000); // leave room for the power to stabilize and all

    SYSCFG_DL_init();
    NVIC->ICPR[0] = 1 << GPIOA_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << GPIOA_INT_IRQn; // both ports fall into the same interrupt for some reason
    NVIC->ICPR[0] = 1 << SPI0_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << SPI0_INT_IRQn; // enable interrupts for SPI0

    SPI_CS_LOW;
    SPI_DATA(0xff);

    while (1) {
        
        if (GPIOA->DIN31_0 & 1 << 24) { // lead is off
            GPIOA->DOUTSET31_0 = 1 << 0;
        }
        else { // leads are both on
             GPIOA->DOUTCLR31_0 = 1 << 0;
        }

        if (!cnt++) {
            GPIOA->DOUTTGL31_0 = 0b1 << 1;  // blink the yellow
            SPI_CS_LOW;
            SPI_DATA(0xff);
            SPI_WAIT_TRANSFER_COMPLETE;
        }
            if (cnt >= UINT16_MAX * 30) cnt = 0;
    }
}

void GROUP1_IRQHandler() {
    switch (GPIOA->CPU_INT.IIDX) {
    case DL_GPIO_IIDX_DIO2: // IRQ falling edge
        GPIOA->DOUTTGL31_0 = 0b1 << 1;  // blink the yellow
        return;
    }
}

void SPI0_IRQHandler() {
    SPI_CS_HIGH;
    GotBack = SPI0->RXDATA;
}
