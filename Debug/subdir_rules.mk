################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/gcc_arm_none_eabi_9_2_1/bin/arm-none-eabi-gcc-9.2.1.exe" -c @"syscfg/device.opt"  -mcpu=cortex-m0plus -march=armv6-m -mthumb -mfloat-abi=soft -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor" -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/Debug" -I"C:/ti/mspm0_sdk_2_04_00_06/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_04_00_06/source" -I"C:/ti/gcc_arm_none_eabi_9_2_1/arm-none-eabi/include/newlib-nano" -I"C:/ti/gcc_arm_none_eabi_9_2_1/arm-none-eabi/include" -O2 -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -Wall -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-1358088993: ../EMG-BatchelorsThesis.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs2002/ccs/utils/sysconfig_1.22.0/sysconfig_cli.bat" --script "C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/EMG-BatchelorsThesis.syscfg" -o "syscfg" -s "C:/ti/mspm0_sdk_2_04_00_06/.metadata/product.json" -d "MSPM0G110X" -p "VQFN-24(RGE)" -r "Default" --context "system" --compiler gcc
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/device_linker.lds: build-1358088993 ../EMG-BatchelorsThesis.syscfg
syscfg/device.opt: build-1358088993
syscfg/device.lds.genlibs: build-1358088993
syscfg/ti_msp_dl_config.c: build-1358088993
syscfg/ti_msp_dl_config.h: build-1358088993
syscfg/Event.dot: build-1358088993
syscfg: build-1358088993

syscfg/%.o: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/gcc_arm_none_eabi_9_2_1/bin/arm-none-eabi-gcc-9.2.1.exe" -c @"syscfg/device.opt"  -mcpu=cortex-m0plus -march=armv6-m -mthumb -mfloat-abi=soft -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor" -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/Debug" -I"C:/ti/mspm0_sdk_2_04_00_06/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_04_00_06/source" -I"C:/ti/gcc_arm_none_eabi_9_2_1/arm-none-eabi/include/newlib-nano" -I"C:/ti/gcc_arm_none_eabi_9_2_1/arm-none-eabi/include" -O2 -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -Wall -MMD -MP -MF"syscfg/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

startup_mspm0g110x_gcc.o: C:/ti/mspm0_sdk_2_04_00_06/source/ti/devices/msp/m0p/startup_system_files/gcc/startup_mspm0g110x_gcc.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/gcc_arm_none_eabi_9_2_1/bin/arm-none-eabi-gcc-9.2.1.exe" -c @"syscfg/device.opt"  -mcpu=cortex-m0plus -march=armv6-m -mthumb -mfloat-abi=soft -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor" -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/Debug" -I"C:/ti/mspm0_sdk_2_04_00_06/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_04_00_06/source" -I"C:/ti/gcc_arm_none_eabi_9_2_1/arm-none-eabi/include/newlib-nano" -I"C:/ti/gcc_arm_none_eabi_9_2_1/arm-none-eabi/include" -O2 -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -Wall -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/marec/Documents/GitHub/sEMG-Wireless-Sensor/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


