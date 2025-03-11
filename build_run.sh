#!/bin/bash
nasm -f elf64 -o main.o main.asm
# Link the object file to create the binary
ld main.o -o main 
# Python
python3 main.py
# Run the binary
./main
# Show size
echo "Size of the binary:"
du -h main
wc -c main