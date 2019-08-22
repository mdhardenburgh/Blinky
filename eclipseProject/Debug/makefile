################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/seg_lcd/tsdh1188/subdir.mk
-include utilities/seg_lcd/cl010/subdir.mk
-include utilities/sdram/subdir.mk
-include utilities/sd_card/subdir.mk
-include utilities/qspi_flash/subdir.mk
-include utilities/printf_scanf/subdir.mk
-include utilities/nand_flash/subdir.mk
-include utilities/i2s_codec/subdir.mk
-include utilities/hyper_flash/subdir.mk
-include utilities/eeprom/subdir.mk
-include source/subdir.mk
-include drivers/wdg/subdir.mk
-include drivers/wc/subdir.mk
-include drivers/vbat/subdir.mk
-include drivers/uid/subdir.mk
-include drivers/startup/device/subdir.mk
-include drivers/sdif/subdir.mk
-include drivers/rtc/subdir.mk
-include drivers/reset/subdir.mk
-include drivers/rc/subdir.mk
-include drivers/qprc/subdir.mk
-include drivers/ppg/subdir.mk
-include drivers/pcrc/subdir.mk
-include drivers/mft/subdir.mk
-include drivers/mfs/subdir.mk
-include drivers/lvd/subdir.mk
-include drivers/lpm/subdir.mk
-include drivers/lcd/subdir.mk
-include drivers/icc/subdir.mk
-include drivers/i2s/subdir.mk
-include drivers/i2cs/subdir.mk
-include drivers/hsspi/subdir.mk
-include drivers/hbif/subdir.mk
-include drivers/flash/subdir.mk
-include drivers/extif/subdir.mk
-include drivers/exint/subdir.mk
-include drivers/dt/subdir.mk
-include drivers/dstc/subdir.mk
-include drivers/dma/subdir.mk
-include drivers/dac/subdir.mk
-include drivers/csv/subdir.mk
-include drivers/crc/subdir.mk
-include drivers/cr/subdir.mk
-include drivers/clk/subdir.mk
-include drivers/can/subdir.mk
-include drivers/bt/subdir.mk
-include drivers/adc/subdir.mk
-include drivers/subdir.mk
-include RTE/Device/S6E2CCAJ0A/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
Blinky.hex \

SECONDARY_SIZE += \
Blinky.siz \


# All Target
all: Blinky.elf secondary-outputs

# Tool invocations
Blinky.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM Cross C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T /home/matt/repos/Blinky/eclipseProject/linker/s6e2cca_rom.ld -Xlinker --gc-sections -Wl,-Map,"Blinky.map" --specs=nosys.specs -o "Blinky.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Blinky.hex: Blinky.elf
	@echo 'Invoking: GNU ARM Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex "Blinky.elf"  "Blinky.hex"
	@echo 'Finished building: $@'
	@echo ' '

Blinky.siz: Blinky.elf
	@echo 'Invoking: GNU ARM Cross Print Size'
	arm-none-eabi-size --format=berkeley "Blinky.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) Blinky.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
