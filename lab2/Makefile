SDK_PREFIX?=arm-none-eabi-
CC = $(SDK_PREFIX)gcc
LD = $(SDK_PREFIX)ld
SIZE = $(SDK_PREFIX)size
OBJCOPY = $(SDK_PREFIX)objcopy
QEMU = /home/masterov-io23/opt/xPacks/qemu-arm/xpack-qemu-arm-7.2.0-1/bin/qemu-s>
BOARD ?= STM32F4-Discovery
MCU=STM32F407VG
TARGET=firmware
CPU_CC=cortex-m4
TCP_ADDR=1234

deps = start.S lab1.S lscript.ld

all: target

target:
        $(CC) -x assembler-with-cpp -c -O0 -g3 -mcpu=$(CPU_CC) -Wall start.S -o >
        $(CC) -x assembler-with-cpp -c -O0 -g3 -mcpu=$(CPU_CC) -Wall lab1.S -o l>
        $(CC) start.o lab1.o -mcpu=$(CPU_CC) -Wall --specs=nosys.specs -nostdlib>
        $(OBJCOPY) -O binary -F elf32-littlearm $(TARGET).elf $(TARGET).bin

qemu:
        $(QEMU) --verbose --verbose --board $(BOARD) --mcu $(MCU) -d unimp,guest>

clean:
        -rm *.o
        -rm *.elf
        -rm *.bin

