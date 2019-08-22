################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../drivers/start/device/startup_s6e2cc.S 

OBJS += \
./drivers/start/device/startup_s6e2cc.o 

S_UPPER_DEPS += \
./drivers/start/device/startup_s6e2cc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/start/device/%.o: ../drivers/start/device/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -D_RTE_ -DS6E2CCAJ0A -I"/home/matt/repos/Blinky/eclipseProject/utilities" -I"/home/matt/repos/Blinky/eclipseProject/drivers" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -I"/home/matt/Packages/Keil/FM4_DFP/1.6.0/Device/S6E2CC/Include" -I"/home/matt/repos/Blinky/eclipseProject/RTE" -I"/home/matt/repos/Blinky/eclipseProject/RTE/Device/S6E2CCAJ0A" -isystem"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -isystem"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -isystem"/home/matt/Packages/Keil/FM4_DFP/1.6.0/Device/S6E2CC/Include" -isystem"/home/matt/repos/Blinky/eclipseProject/RTE" -isystem"/home/matt/repos/Blinky/eclipseProject/RTE/Device/S6E2CCAJ0A" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


