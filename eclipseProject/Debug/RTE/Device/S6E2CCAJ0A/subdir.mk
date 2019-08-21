################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTE/Device/S6E2CCAJ0A/system_s6e2cc.c 

S_UPPER_SRCS += \
../RTE/Device/S6E2CCAJ0A/startup_s6e2cc.S 

OBJS += \
./RTE/Device/S6E2CCAJ0A/startup_s6e2cc.o \
./RTE/Device/S6E2CCAJ0A/system_s6e2cc.o 

S_UPPER_DEPS += \
./RTE/Device/S6E2CCAJ0A/startup_s6e2cc.d 

C_DEPS += \
./RTE/Device/S6E2CCAJ0A/system_s6e2cc.d 


# Each subdirectory must supply rules for building sources it contributes
RTE/Device/S6E2CCAJ0A/%.o: ../RTE/Device/S6E2CCAJ0A/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -D_RTE_ -DS6E2CCAJ0A -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/utilities" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/drivers" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -I"/home/matt/repos/Blinky/eclipseProject/RTE" -I"/home/matt/repos/Blinky/eclipseProject/RTE/Device/S6E2CCAJ0A" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RTE/Device/S6E2CCAJ0A/%.o: ../RTE/Device/S6E2CCAJ0A/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -D_RTE_ -DS6E2CCAJ0A -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/utilities" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/drivers" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -I"/home/matt/repos/Blinky/eclipseProject/RTE" -I"/home/matt/repos/Blinky/eclipseProject/RTE/Device/S6E2CCAJ0A" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


