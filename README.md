# 6502 Mathematics
## Introduction
  This project was created for me to brush up on my 6502 skills by creating calculations with the language. Each file does a specific calculation differently.
## Assembling
  The project is intended for people to read the code, rather than run the code. Nonetheless, the project has assembled files for each program, simply plug the code into an online emulator or emulator of your choosing to run the code.

## Methods
 - Addition 1: This method uses the ADC mnemonic to add a value stored at a memory location to the accumulator, and stores the results.
 - Multiplication 1: This method uses looped addition to multiply a value by another.
 - Multiplication 2: This method uses the same stepped addition method as Multiplication 1, but has the ability to handle 16-bit results. It stores the high byte at $00F2, and the low at $00F2
