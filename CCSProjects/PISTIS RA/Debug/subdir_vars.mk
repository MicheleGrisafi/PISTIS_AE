################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../msp430f5529.ld 

S_SRCS += \
../protected_isr.s \
../raHelperAsm.s \
../virt_fun.s 

C_SRCS += \
../core.c \
../main.c \
../secureContextSwitch.c \
../secureUpdate.c 

S_DEPS += \
./protected_isr.d \
./raHelperAsm.d \
./virt_fun.d 

C_DEPS += \
./core.d \
./main.d \
./secureContextSwitch.d \
./secureUpdate.d 

OBJS += \
./core.o \
./main.o \
./protected_isr.o \
./raHelperAsm.o \
./secureContextSwitch.o \
./secureUpdate.o \
./virt_fun.o 

OBJS__QUOTED += \
"core.o" \
"main.o" \
"protected_isr.o" \
"raHelperAsm.o" \
"secureContextSwitch.o" \
"secureUpdate.o" \
"virt_fun.o" 

C_DEPS__QUOTED += \
"core.d" \
"main.d" \
"secureContextSwitch.d" \
"secureUpdate.d" 

S_DEPS__QUOTED += \
"protected_isr.d" \
"raHelperAsm.d" \
"virt_fun.d" 

C_SRCS__QUOTED += \
"../core.c" \
"../main.c" \
"../secureContextSwitch.c" \
"../secureUpdate.c" 

S_SRCS__QUOTED += \
"../protected_isr.s" \
"../raHelperAsm.s" \
"../virt_fun.s" 


