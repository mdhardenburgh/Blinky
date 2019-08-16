################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/interrupts_fm0p_type_1-a.c \
../drivers/interrupts_fm0p_type_1-b.c \
../drivers/interrupts_fm0p_type_2-a.c \
../drivers/interrupts_fm0p_type_2-b.c \
../drivers/interrupts_fm0p_type_3.c \
../drivers/interrupts_fm3_type_a.c \
../drivers/interrupts_fm3_type_b.c \
../drivers/interrupts_fm3_type_c.c \
../drivers/interrupts_fm4_type_a.c \
../drivers/interrupts_fm4_type_b.c \
../drivers/interrupts_fm4_type_c.c \
../drivers/pdl.c 

OBJS += \
./drivers/interrupts_fm0p_type_1-a.o \
./drivers/interrupts_fm0p_type_1-b.o \
./drivers/interrupts_fm0p_type_2-a.o \
./drivers/interrupts_fm0p_type_2-b.o \
./drivers/interrupts_fm0p_type_3.o \
./drivers/interrupts_fm3_type_a.o \
./drivers/interrupts_fm3_type_b.o \
./drivers/interrupts_fm3_type_c.o \
./drivers/interrupts_fm4_type_a.o \
./drivers/interrupts_fm4_type_b.o \
./drivers/interrupts_fm4_type_c.o \
./drivers/pdl.o 

C_DEPS += \
./drivers/interrupts_fm0p_type_1-a.d \
./drivers/interrupts_fm0p_type_1-b.d \
./drivers/interrupts_fm0p_type_2-a.d \
./drivers/interrupts_fm0p_type_2-b.d \
./drivers/interrupts_fm0p_type_3.d \
./drivers/interrupts_fm3_type_a.d \
./drivers/interrupts_fm3_type_b.d \
./drivers/interrupts_fm3_type_c.d \
./drivers/interrupts_fm4_type_a.d \
./drivers/interrupts_fm4_type_b.d \
./drivers/interrupts_fm4_type_c.d \
./drivers/pdl.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -D_RTE_ -DS6E2CCAJ0A -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/utilities" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/drivers" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/Core/Include" -I"/home/matt/Packages/ARM/CMSIS/5.6.0/CMSIS/DSP/Include" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/RTE" -I"/home/matt/softwareDefinedRadio/embedded/test/Blinky/RTE/Device/S6E2CCAJ0A" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


