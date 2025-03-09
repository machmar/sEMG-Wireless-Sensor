/*
 * Copyright (c) 2023, Texas Instruments Incorporated - http://www.ti.com
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

/*
 *  ============ ti_msp_dl_config.h =============
 *  Configured MSPM0 DriverLib module declarations
 *
 *  DO NOT EDIT - This file is generated for the MSPM0G110X
 *  by the SysConfig tool.
 */
#ifndef ti_msp_dl_config_h
#define ti_msp_dl_config_h

#define CONFIG_MSPM0G110X
#define CONFIG_MSPM0G1107

#if defined(__ti_version__) || defined(__TI_COMPILER_VERSION__)
#define SYSCONFIG_WEAK __attribute__((weak))
#elif defined(__IAR_SYSTEMS_ICC__)
#define SYSCONFIG_WEAK __weak
#elif defined(__GNUC__)
#define SYSCONFIG_WEAK __attribute__((weak))
#endif

#include <ti/devices/msp/msp.h>
#include <ti/driverlib/driverlib.h>
#include <ti/driverlib/m0p/dl_core.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 *  ======== SYSCFG_DL_init ========
 *  Perform all required MSP DL initialization
 *
 *  This function should be called once at a point before any use of
 *  MSP DL.
 */


/* clang-format off */

#define POWER_STARTUP_DELAY                                                (16)


#define CPUCLK_FREQ                                                     32000000




/* Defines for ADC12_0 */
#define ADC12_0_INST                                                        ADC0
#define ADC12_0_INST_IRQHandler                                  ADC0_IRQHandler
#define ADC12_0_INST_INT_IRQN                                    (ADC0_INT_IRQn)
#define ADC12_0_ADCMEM_BATTERY_VOLTAGE                        DL_ADC12_MEM_IDX_0
#define ADC12_0_ADCMEM_BATTERY_VOLTAGE_REF       DL_ADC12_REFERENCE_VOLTAGE_INTREF
#define ADC12_0_ADCMEM_BATTERY_VOLTAGE_REF_VOLTAGE_V                                    1.40
#define ADC12_0_ADCMEM_INAMP_DIFFERENTIAL                      DL_ADC12_MEM_IDX_1
#define ADC12_0_ADCMEM_INAMP_DIFFERENTIAL_REF         DL_ADC12_REFERENCE_VOLTAGE_VDDA
#define ADC12_0_ADCMEM_INAMP_DIFFERENTIAL_REF_VOLTAGE_V                                     3.3
#define ADC12_0_ADCMEM_INAMP_REFFERENCE                       DL_ADC12_MEM_IDX_2
#define ADC12_0_ADCMEM_INAMP_REFFERENCE_REF         DL_ADC12_REFERENCE_VOLTAGE_VDDA
#define ADC12_0_ADCMEM_INAMP_REFFERENCE_REF_VOLTAGE_V                                     3.3
#define GPIO_ADC12_0_C2_PORT                                               GPIOA
#define GPIO_ADC12_0_C2_PIN                                       DL_GPIO_PIN_25
#define GPIO_ADC12_0_C1_PORT                                               GPIOA
#define GPIO_ADC12_0_C1_PIN                                       DL_GPIO_PIN_26


/* Defines for VREF */
#define VREF_VOLTAGE_MV                                                     1400
#define GPIO_VREF_VREFPOS_PORT                                             GPIOA
#define GPIO_VREF_VREFPOS_PIN                                     DL_GPIO_PIN_21
#define GPIO_VREF_IOMUX_VREFPOS                                  (IOMUX_PINCM46)
#define GPIO_VREF_IOMUX_VREFPOS_FUNC                IOMUX_PINCM46_PF_UNCONNECTED




/* Port definition for Pin Group LED */
#define LED_PORT                                                         (GPIOA)

/* Defines for RED_LED: GPIOA.10 with pinCMx 21 on package pin 9 */
#define LED_RED_LED_PIN                                         (DL_GPIO_PIN_10)
#define LED_RED_LED_IOMUX                                        (IOMUX_PINCM21)
/* Defines for YELLOW_LED: GPIOA.11 with pinCMx 22 on package pin 10 */
#define LED_YELLOW_LED_PIN                                      (DL_GPIO_PIN_11)
#define LED_YELLOW_LED_IOMUX                                     (IOMUX_PINCM22)
/* Port definition for Pin Group INAMP */
#define INAMP_PORT                                                       (GPIOA)

/* Defines for INAMP_ENABLE: GPIOA.23 with pinCMx 53 on package pin 19 */
#define INAMP_INAMP_ENABLE_PIN                                  (DL_GPIO_PIN_23)
#define INAMP_INAMP_ENABLE_IOMUX                                 (IOMUX_PINCM53)
/* Defines for INAMP_LEAD_OFF: GPIOA.24 with pinCMx 54 on package pin 20 */
#define INAMP_INAMP_LEAD_OFF_PIN                                (DL_GPIO_PIN_24)
#define INAMP_INAMP_LEAD_OFF_IOMUX                               (IOMUX_PINCM54)

/* clang-format on */

void SYSCFG_DL_init(void);
void SYSCFG_DL_initPower(void);
void SYSCFG_DL_GPIO_init(void);
void SYSCFG_DL_SYSCTL_init(void);
void SYSCFG_DL_ADC12_0_init(void);
void SYSCFG_DL_VREF_init(void);



#ifdef __cplusplus
}
#endif

#endif /* ti_msp_dl_config_h */
