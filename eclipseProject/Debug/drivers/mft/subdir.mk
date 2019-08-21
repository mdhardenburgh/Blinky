################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mft/mft_adcmp.c \
../drivers/mft/mft_frt.c \
../drivers/mft/mft_icu.c \
../drivers/mft/mft_ocu.c \
../drivers/mft/mft_wfg.c 

OBJS += \
./drivers/mft/mft_adcmp.o \
./drivers/mft/mft_frt.o \
./drivers/mft/mft_icu.o \
./drivers/mft/mft_ocu.o \
./drivers/mft/mft_wfg.o 

C_DEPS += \
./drivers/mft/mft_adcmp.d \
./drivers/mft/mft_frt.d \
./drivers/mft/mft_icu.d \
./drivers/mft/mft_ocu.d \
./drivers/mft/mft_wfg.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mft/%.o: ../drivers/mft/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -D_RTE_ -DS6E2CCAJ0A -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/utilities" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/drivers" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -I"/home/matt/repos/Blinky/eclipseProject/RTE" -I"/home/matt/repos/Blinky/eclipseProject/RTE/Device/S6E2CCAJ0A" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


