#!/bin/bash
# Assemble le fichier ASM
nasm -f elf64 -o main.o main.asm
# Lie le fichier objet pour créer le binaire
ld main.o -o main
# Exécute le script Python
python3 main.py
