rm --force r3000.elf
mipsel-elf-gcc -G0 -msoft-float -Os -mips1 -ffreestanding -c *.S src/*.c
mipsel-elf-ld *.o -G0 -Tlink.ld -o r3000.elf -nostdlib
rm -r --force *.o
mipsel-elf-objcopy r3000.elf -O binary r3000.bin
# rm --force r3000.elf