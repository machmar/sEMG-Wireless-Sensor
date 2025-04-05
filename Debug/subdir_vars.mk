################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
SYSCFG_SRCS += \
../EMG-BatchelorsThesis.syscfg 

C_SRCS += \
../EMG-BatchelorsThesis.c \
./syscfg/ti_msp_dl_config.c \
C:/ti/mspm0_sdk_2_04_00_06/source/ti/devices/msp/m0p/startup_system_files/gcc/startup_mspm0g110x_gcc.c \
../NRFDriver.c 

GEN_CMDS += \
./syscfg/device_linker.lds 

GEN_FILES += \
./syscfg/device_linker.lds \
./syscfg/device.opt \
./syscfg/ti_msp_dl_config.c 

GEN_MISC_DIRS += \
./syscfg 

C_DEPS += \
./EMG-BatchelorsThesis.d \
./syscfg/ti_msp_dl_config.d \
./startup_mspm0g110x_gcc.d \
./NRFDriver.d 

GEN_OPTS += \
./syscfg/device.opt 

OBJS += \
./EMG-BatchelorsThesis.o \
./syscfg/ti_msp_dl_config.o \
./startup_mspm0g110x_gcc.o \
./NRFDriver.o 

GEN_MISC_FILES += \
./syscfg/device.lds.genlibs \
./syscfg/ti_msp_dl_config.h \
./syscfg/Event.dot 

GEN_MISC_DIRS__QUOTED += \
"syscfg" 

OBJS__QUOTED += \
"EMG-BatchelorsThesis.o" \
"syscfg\ti_msp_dl_config.o" \
"startup_mspm0g110x_gcc.o" \
"NRFDriver.o" 

GEN_MISC_FILES__QUOTED += \
"syscfg\device.lds.genlibs" \
"syscfg\ti_msp_dl_config.h" \
"syscfg\Event.dot" 

C_DEPS__QUOTED += \
"EMG-BatchelorsThesis.d" \
"syscfg\ti_msp_dl_config.d" \
"startup_mspm0g110x_gcc.d" \
"NRFDriver.d" 

GEN_FILES__QUOTED += \
"syscfg\device_linker.lds" \
"syscfg\device.opt" \
"syscfg\ti_msp_dl_config.c" 

C_SRCS__QUOTED += \
"../EMG-BatchelorsThesis.c" \
"./syscfg/ti_msp_dl_config.c" \
"C:/ti/mspm0_sdk_2_04_00_06/source/ti/devices/msp/m0p/startup_system_files/gcc/startup_mspm0g110x_gcc.c" \
"../NRFDriver.c" 

SYSCFG_SRCS__QUOTED += \
"../EMG-BatchelorsThesis.syscfg" 


