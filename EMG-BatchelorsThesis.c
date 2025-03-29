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
//#include <cstdint>
#include "NRF_driver.h"

uint32_t cnt = 0;

int main(void)
{
    delay_cycles(1000000); // leave room for the power to stabilize and all

    SYSCFG_DL_init();
    NVIC->ICPR[0] = 1 << GPIOA_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << GPIOA_INT_IRQn; // both ports fall into the same interrupt for some reason
    NVIC->ICPR[0] = 1 << SPI0_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << SPI0_INT_IRQn; // enable interrupts for SPI0

    ADC0->ULLMEM.CTL1 |= 1 << 8; // start ADC conversions

    // init the nrf with basic settings
    for (uint32_t i = 0; i < (NRF_INIT_REGS_LENGTH - 1); i += 2) {
        SPI_CS_LOW;
        SPI_DATA(NrfInitRegs[i]);
        SPI_DATA(NrfInitRegs[i + 1]);
        SPI_WAIT_TRANSFER_COMPLETE;
    }
    // check the reg states
    bool volatile regsCorrect = true;
    uint32_t volatile failedReg = UINT32_MAX;
    for (uint32_t i = 0; i < (NRF_INIT_REGS_CHECK_LENGTH); i++) {
        SPI_CS_LOW;
        SPI_DATA(NrfInitRegsCheck[i]);
        SPI_DATA(0x00);
        SPI_WAIT_TRANSFER_COMPLETE;
        if (GotBack[1] != NrfInitRegsCheckValid[i]) {
            regsCorrect = false;
            failedReg = i;
            break;
        }
    }
    if (!regsCorrect) {
        // do something to signalize issue with init
        //__asm__ volatile(".inst 0xe7f001f0"); // should trigger a breakpoint but doesn't
    }

    // enable tranmission, set adresses fro transmit and receive pipes (for ack)
    for (uint32_t i = 0; i < (NRF_TRANSMIT_REGS_LENGTH - 1); i += 2) {
        SPI_CS_LOW;
        SPI_DATA(NrfTransmitRegs[i]);
        SPI_DATA(NrfTransmitRegs[i + 1]);
        SPI_WAIT_TRANSFER_COMPLETE;
    }
    // out pipe address
    SPI_CS_LOW;
    SPI_DATA(0x30);
    SPI_DATA(0x01);
    SPI_DATA(0x23);
    SPI_DATA(0x45);
    SPI_DATA(0x67);
    SPI_WAIT_FIFO_NOT_FULL; // wait till theres space in the fifo
    SPI_DATA(0x89);
    SPI_WAIT_TRANSFER_COMPLETE;
    // in pipe address (using pipe 0)
    SPI_CS_LOW;
    SPI_DATA(0x2A);
    SPI_DATA(0x01);
    SPI_DATA(0x23);
    SPI_DATA(0x45);
    SPI_DATA(0x67);
    SPI_WAIT_FIFO_NOT_FULL; // wait till theres space in the fifo
    SPI_DATA(0x89);
    SPI_WAIT_TRANSFER_COMPLETE;
    // SET TX, enable interrupt, clear fifo
    SPI_CS_LOW;
    SPI_DATA(0x20);
    SPI_DATA(0x5E);
    SPI_WAIT_TRANSFER_COMPLETE;
    SPI_CS_LOW;
    SPI_DATA(0xE1);
    SPI_WAIT_TRANSFER_COMPLETE;

    while (1) {
        
        if (GPIOA->DIN31_0 & 1 << 24) { // lead is off
            GPIOA->DOUTSET31_0 = 1 << 0;
        }
        else { // leads are both on
             GPIOA->DOUTCLR31_0 = 1 << 0;
        }

        if (!cnt++) {
            //GPIOA->DOUTTGL31_0 = 0b1 << 1;  // blink the yellow
            // clear interrupts, go to standby
            SPI_CS_LOW;
            SPI_DATA(0x27);
            SPI_DATA(0x70);
            SPI_WAIT_TRANSFER_COMPLETE;
            SPI_CS_LOW;
            SPI_DATA(0x20);
            SPI_DATA(0x5E);
            SPI_WAIT_TRANSFER_COMPLETE;
            // flush TX fifo
            SPI_CS_LOW;
            SPI_DATA(0xE1);
            SPI_WAIT_TRANSFER_COMPLETE;
            // transmit the payload
            SPI_CS_LOW;
            SPI_DATA(0xA0);
            SPI_DATA(ADC0->ULLMEM.MEMRES[1] >> (12 - 8));
            SPI_WAIT_TRANSFER_COMPLETE;
            // send it
            NRF_CE_HIGH;
            delay_cycles(1000);
            NRF_CE_LOW;
            /*SPI_CS_LOW;
            SPI_DATA(0xff);
            SPI_WAIT_TRANSFER_COMPLETE;*/
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

    for (uint32_t i = 0; i < 5; i++) {
        if (~SPI0->STAT & SPI_STAT_RFE_EMPTY) { // fifo is empty
            GotBack[i] = SPI0->RXDATA;
        }
        else {
            GotBack[i] = 0;
        }
    }
}
