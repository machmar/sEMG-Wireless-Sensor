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
#include "Flash.h"
#include "Millis.h"
#include "TransmitFifo.h"
#include <string.h>

/* !!!BIG BIG ISSUE!!!
 * Setting a value to a global variable does not guarantee it having that value during execution for some reason!
*/

uint8_t tmp_data_[32];
uint8_t received_data[32];
uint32_t received_data_length = 0;

uint16_t emg_dif_data[5];
uint16_t emg_ref_data[5];
uint32_t emg_data_pos = 0;

uint8_t flash_transfer_buffer[2560];

bool measurement_stopped_ = false;
bool electrodes_attachhed_ = false;

void HandleStatusTransmit(uint8_t type, uint8_t data);

int main(void)
{
    delay_cycles(1000000); // leave room for the power to stabilize and all

    SYSCFG_DL_init();
    NVIC->ICPR[0] = 1 << GPIOA_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << GPIOA_INT_IRQn; // both ports fall into the same interrupt for some reason
    NVIC->ICPR[0] = 1 << SPI0_INT_IRQn; // clear the interrupt state before enabling it
    NVIC->ISER[0] = 1 << SPI0_INT_IRQn; // enable interrupts for NRF-SPI
    NVIC->ISER[0] = 1 << SPI1_INT_IRQn; // enable interrupts for Flash-SPI

    ADC0->ULLMEM.CTL1 |= 1 << 8; // start ADC conversions
    ADC0->ULLMEM.CPU_INT.ICLR = 0xffffffff; // clear adc0 interrupts before enabling them
    NVIC->ISER[0] = 1 << ADC0_INT_IRQn; // enable interrupts for ADC0

    MillisInit();
    TransmitFifo_Init();

    for (uint32_t i = 0; i < 32; i++) received_data[i] = 0;

    if (!NRF_Init()) {
        while(1) { // nrf init gone bad, stop dead
            HW_LED_RED_TGL;
            for (uint32_t i = 0; i < 200000; i++);
        }
    }

    if (Flash_Init() == StateFlash_NotResponding) {
        while(1) { // flash init gone bad, stop dead
            HW_LED_RED_TGL;
            for (uint32_t i = 0; i < 4000000; i++);
        }
    }

    // --- FLASH SPEED TEST ---
    /*strcpy(flash_transfer_buffer, "Calm dusk (Text 1) settles over the valley, painting barns gold as crickets chirp and warm wind stirs the tall grass. Windows glow, supper aromas drift, and the sky hums softly with promise of restful dreams. Nightbirds weave faint silver arcs above Calm.");
    HW_LED_YEL_SET;
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001100, 256);
    strcpy(flash_transfer_buffer, "Morning mist (Text 2) rises from the river, veiling reeds and stones in pearl gray silence. Fishermen wait, gentle ripples glide, and distant bells mark the hour with soft chimes echoing across water and willow. Hope wakes in the cool hush. Quiet hearts!!");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001200, 256);
    strcpy(flash_transfer_buffer, "After ten steps (Text 3) along the garden path, lavender and mint breathe their vivid perfumes. Bees drift lazily, wings humming chords of midsummer, while a stone bench invites a pause beneath the wide, whispering elm. Sunlight puddles across worn brick.");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001300, 256);
    strcpy(flash_transfer_buffer, "A distant bell rings (Text 4) through the cloister hall, waking echoes that fade among arches and cool stone. Candles tremble, dust motes dance, and prayerful silence wraps the ancient walls like linen around a sleeping child. Peace lies in the hush Soft");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001400, 256);
    strcpy(flash_transfer_buffer, "Twilight whispers (Text 5) across the lake, coloring still water with rose and violet. An owl stirs, wings brushing the cool air, while fireflies blink their tiny messages among reeds, scripting quiet wonder in living sparks. Night leans closer to listen.");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001500, 256);
    strcpy(flash_transfer_buffer, "City neon throbs (Text 6) above wet pavement, reflecting kaleidoscopes of color in each shallow puddle. Horns blur, footsteps mingle, and a lone saxophone threads its blues between streetlights, weaving a midnight ode to restless dreams. Skies hum softly.");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001600, 256);
    strcpy(flash_transfer_buffer, "Snowfall muffles (Text 7) the forest trail, layering branches in silent lace. Breath forms tiny clouds, crunch of boots steady, and the world retreats to white hush. A lone pine creaks gently, bowing beneath the quiet weight of winter light. Still sings!!");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001700, 256);
    strcpy(flash_transfer_buffer, "Sailing northward (Text 8), the cutter slices through teal swells, canvas straining in crisp wind. Spray pearls the rails, gulls trace spirals overhead, and salt breathes its briny tales across the deck like ancient stories in motion. Horizon laughs. Anew");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001800, 256);
    strcpy(flash_transfer_buffer, "In the market square (Text 9), spices swirl with chatter and bright cloth banners flutter overhead. Laughter meets barter, drums pulse, and children dart like swallows, weaving color through the sunlit chaos of trading day. Joy rises like smoke. Above Up");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001900, 256);
    strcpy(flash_transfer_buffer, "Library lamps glow (Text 10) over rows of quiet minds, pages turning like soft wings. Dusty sunlight filters high windows, lending every word a hush of reverence as seekers drift among shelves, gathering sparks of thought for their own fires. Sparks rise.");
    while(Flash_GetState() != StateFlash_Idle);
    Flash_Write(flash_transfer_buffer, 0x001a00, 256);
    while(Flash_GetState() != StateFlash_Idle);
    HW_LED_YEL_CLR;*/

    /*HW_LED_YEL_SET;
    while(Flash_GetState() != StateFlash_Idle);
    FlashState_t volatile tmp = Flash_Read(flash_transfer_buffer, 0x001100, 2560);
    HW_LED_YEL_CLR;*/

    while (1) {
        
        static millis_t electrodeCheckPMill = 0;
        if (Millis() - electrodeCheckPMill >= 100) {
            electrodeCheckPMill = Millis();
            if (GPIOA->DIN31_0 & 1 << 24) { // lead is off
                electrodes_attachhed_ = false;
                GPIOA->DOUTSET31_0 = 1 << 0;
            }
            else { // leads are both on
                electrodes_attachhed_ = true;
                GPIOA->DOUTCLR31_0 = 1 << 0;
            }
            static electrodes_prev = false;
            if (electrodes_prev != electrodes_attachhed_) {
                electrodes_prev = electrodes_attachhed_;
                TransmitFifo_Add(0x03, 0x00);
            }
        }

        static uint8_t requestedType = 0;
        static uint8_t requestedTypeData = 0;
        static millis_t SendPMill = 0;
        if (Millis() - SendPMill >= 10 && !measurement_stopped_) {
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
        case State_TransmitFailed: // for now do nothing, just go into receive mode anyway
        case State_TransmitSuccess: // transmission is done, either send status thing, or go into receive
            HW_LED_YEL_SET;
            if(TransmitFifo_Get(&requestedType, &requestedTypeData)) {
                HandleStatusTransmit(requestedType, requestedTypeData);
            }
            else {
                NRF_RXStart();
            }
            break;

        case State_ReceiveReady:
            NRF_RXGet(received_data, &received_data_length);
            switch (received_data[0]) {
            case 0x01: // requested batterry level
                TransmitFifo_Add(0x01, 0x00);
                break;

            case 0x02: // requested to flash an LED
                HW_LED_RED_TGL; // temporary, needs to be done better
                break;

            case 0x03: // requested a status of the electrode attachment
                TransmitFifo_Add(0x03, 0x00);
                break;

            case 0x06: // setting measurement state
                if (received_data[1] == 0x00)
                    measurement_stopped_ = true;
                else if(received_data[1] == 0x01)
                    measurement_stopped_ = false;
                break;

            case 0xfd: // alive check
                TransmitFifo_Add(0xfd, 0x00);
                break;

            case 0xfe: // shutdown
                break;

            case 0xff: // extended type range
                switch(received_data[1]) {
                default:
                    // nothing implemented now
                    break;
                }
            }
            break;

        case State_ReceiveIdle:
            NRF_RXStart();
            break;

        case State_ReceiveWait:
            HW_LED_YEL_CLR;
            if(TransmitFifo_Get(&requestedType, &requestedTypeData))
                HandleStatusTransmit(requestedType, requestedTypeData);
            break;
        }
    }
}

void HandleStatusTransmit(uint8_t type, uint8_t data) {
    static uint8_t send_data[2] = {0};
    switch(type) {
    case 0x01: // requested batterry level
        send_data[0] = 0x01;
        send_data[1] = ADC0->ULLMEM.MEMRES[1] >> (12 - 8);
        NRF_TXSetData(send_data, 3);
        NRF_TXTransmit();
        break;

    case 0x03: // requested a status of the electrode attachment
        send_data[0] = 0x03;
        send_data[1] = electrodes_attachhed_;
        NRF_TXSetData(send_data, 3);
        NRF_TXTransmit();
        break;

    case 0xfd: // alive check
        send_data[0] = 0xfd;
        NRF_TXSetData(send_data, 2);
        NRF_TXTransmit();
        break;

    default: // don't care about them here
        break;
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

void SPI1_IRQHandler() {
    Flash_SPIHandler();
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
