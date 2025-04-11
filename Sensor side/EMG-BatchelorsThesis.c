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
#include "Millis.h"
#include <string.h>

/* !!!BIG BIG ISSUE!!!
 * Setting a value to a global variable does not guarantee it having that value during execution for some reason!
*/

uint8_t tmp_data_[32];
uint8_t received_data[32];

uint16_t emg_dif_data[5];
uint16_t emg_ref_data[5];
uint32_t emg_data_pos = 0;

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

    MillisInit();

    for (uint32_t i = 0; i < 32; i++) received_data[i] = 0;

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
        
        if (GPIOA->DIN31_0 & 1 << 24) { // lead is off
            GPIOA->DOUTSET31_0 = 1 << 0;
        }
        else { // leads are both on
             GPIOA->DOUTCLR31_0 = 1 << 0;
        }

        static millis_t SendPMill = 0;
        if (Millis() - SendPMill >= 10) {
            SendPMill = Millis();
            static uint8_t send_data[35] = {0};
            for (uint32_t i = 0; i < 5 && i < emg_data_pos; i++) {
                uint32_t pos = i * 5;
                send_data[0 + pos] = 0x00;
                send_data[1 + pos] = (emg_dif_data[i] >> 8) & 0xff;
                send_data[2 + pos] = emg_dif_data[i] & 0xff;
                send_data[3 + pos] = (emg_ref_data[i] >> 8) & 0xff;
                send_data[4 + pos] = emg_ref_data[i] & 0xff;
            }
            NRF_TXSetData(send_data, (emg_data_pos * 5) + 1);
            emg_data_pos = 0;
            NRF_TXTransmit();
        }

        NRF_State_t state = NRF_CheckState();
        switch (state) {
        case State_TransmitSuccess:
            HW_LED_YEL_SET;
            NRF_RXStart();
            break;

        case State_ReceiveReady:
            NRF_RXGet(received_data); // add a second variable for length received
            break;

        case State_ReceiveWait:
            HW_LED_YEL_CLR;
            break;
        }
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
    switch (ADC0->ULLMEM.CPU_INT.IIDX) {
    case DL_ADC12_IIDX_MEM2_RESULT_LOADED:
        if (cnt >= 20) { // this is true each 20 cycles (runs at 999.45Hz)
            cnt = 0;
            MillisInterrupt();
            if (emg_data_pos < 5) {
                emg_dif_data[emg_data_pos] = ADC0->ULLMEM.MEMRES[1];
                emg_ref_data[emg_data_pos] = ADC0->ULLMEM.MEMRES[2];
                emg_data_pos++;
            }
        }
        cnt++;
        break;
    }
}
