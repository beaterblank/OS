#!/bin/bash
nasm -f bin boot.asm -o program.bin
nasm -f bin extended.asm -o storage.bin
cat program.bin storage.bin > boot.bin
dd if=boot.bin bs=512 of=floppy.img
qemu-system-x86_64 boot.bin
