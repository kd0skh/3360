################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/adc.c \
../src/cr_startup_lpc11u.c \
../src/main.c 

S_SRCS += \
../src/asm_fibonacci_cm0.s 

OBJS += \
./src/adc.o \
./src/asm_fibonacci_cm0.o \
./src/cr_startup_lpc11u.o \
./src/main.o 

C_DEPS += \
./src/adc.d \
./src/cr_startup_lpc11u.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_CMSIS=CMSISv2p00_LPC11Uxx -I"/home/patrick/school/ddl_3360/workspace/LPC11Uxx_Driver_Lib" -I"/home/patrick/school/ddl_3360/workspace/CMSISv2p00_LPC11Uxx/inc" -I"/home/patrick/school/ddl_3360/workspace/LPC11Uxx_Driver_Lib/inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -DDEBUG -D__CODE_RED -I"/home/patrick/school/ddl_3360/workspace/LPC11Uxx_Driver_Lib" -I"/home/patrick/school/ddl_3360/workspace/CMSISv2p00_LPC11Uxx" -g3 -mcpu=cortex-m0 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


