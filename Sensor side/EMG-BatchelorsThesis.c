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

#include "ti/devices/msp/peripherals/hw_adc12.h"
#include "ti/driverlib/dl_gpio.h"
#include "ti/driverlib/m0p/dl_core.h"
#include "ti_msp_dl_config.h"
#include "ti/devices/msp/m0p/mspm0g110x.h"
#include "Hardware.h"
#include "NRFDriver.h"
#include <string.h>

/* !!!BIG BIG ISSUE!!!
 * Setting a value to a global variable does not guarantee it having that value during execution for some reason!
*/

uint32_t cnt;
uint8_t tmp_data_[32];

int main(void)
{
    delay_cycles(1000000); // leave room for the power to stabilize and all

    SYSCFG_DL_init();
    NVIC->ICPR[0] = 1 << GPIOA_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << GPIOA_INT_IRQn; // both ports fall into the same interrupt for some reason
    NVIC->ICPR[0] = 1 << SPI0_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << SPI0_INT_IRQn; // enable interrupts for SPI0

    ADC0->ULLMEM.CTL1 |= 1 << 8; // start ADC conversions
    ADC0->ULLMEM.CPU_INT.ICLR = 0xffffffff; // clear adc0 interrupts before enabling them
    NVIC->ISER[0] = 1 << ADC0_INT_IRQn; // enable interrupts for ADC0

    if (!NRF_Init()) {
        while(1) { // nrf init gone bad, stop dead
            HW_LED_RED_TGL;
            for (uint32_t i = 0; i < 200000; i++);
        }
    }

    /*if (!NRF_TXPipe(0x0123456788)) { //receiving is broken
        while(1) { // nrf init gone bad, stop dead
            HW_LED_RED_TGL;
            for (uint32_t i = 0; i < 200000; i++);
        }
    }*/

    while (1) {
        
        /*if (GPIOA->DIN31_0 & 1 << 24) { // lead is off
            GPIOA->DOUTSET31_0 = 1 << 0;
        }
        else { // leads are both on
             GPIOA->DOUTCLR31_0 = 1 << 0;
        }*/

        if (!cnt++) {
            uint8_t send_data[10];
            uint32_t diff = ADC0->ULLMEM.MEMRES[1];
            uint32_t ref = ADC0->ULLMEM.MEMRES[2];
            send_data[0] = 0;
            send_data[1] = diff >> 8;
            send_data[2] = diff & 0xff;
            send_data[3] = ref >> 8;
            send_data[4] = ref & 0xff;
            NRF_TXSetData(send_data, 6);
            NRF_TXTransmit();
        }
        if (cnt >= UINT16_MAX * 30) cnt = 0;
    }
}

void GROUP1_IRQHandler() {
    switch (GPIOA->CPU_INT.IIDX) {
    case DL_GPIO_IIDX_DIO2: // IRQ falling edge
        NRF_IRQHandler();
        return;
    }
}

void SPI0_IRQHandler() {
    NRF_SPIHandler();
}

void ADC0_IRQHandler() {
    static uint8_t cnt = 0;
    if (cnt >= 10) {
        cnt = 0;
        HW_LED_RED_TGL;
    }
    cnt++;

    switch (ADC0->ULLMEM.CPU_INT.IIDX) {
    case DL_ADC12_IIDX_MEM2_RESULT_LOADED:
        // ADC results refreshed
        break;
    }
}
