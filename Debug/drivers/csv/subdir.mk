################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/csv/csv.c 

OBJS += \
./drivers/csv/csv.o 

C_DEPS += \
./drivers/csv/csv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/csv/%.o: ../drivers/csv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -D_RTE_ -DS6E2CCAJ0A -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/utilities" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/drivers" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/RTE" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/RTE/Device/S6E2CCAJ0A" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


