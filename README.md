# 6502 Mathematics
## Introduction
  This project was created for me to brush up on my 6502 skills by creating calculations with the language. Each file does a specific calculation differently.
## Assembling
  The project is intended for people to read the code, rather than run the code. Nonetheless, the project has assembled files for each program, simply plug the code into an online emulator or emulator of your choosing to run the code.

## Methods
 - Addition 1: This method uses the `ADC` mnemonic to add a value stored at a memory location to the accumulator, and stores the results.
 - Subtraction 1: This method uses `SBC` after using `SEC ` to perform accurate subtraction. Method 1 does not deal with carrying over, and only supports 8 bit integers.
 - Multiplication 1: This method uses looped addition to multiply a value by another.
 - Multiplication 2: This method uses the same stepped addition method as Multiplication 1, but has the ability to handle 16-bit results. It stores the high byte at `$00F2`, and the low at `$00F3`
 - Division 1: This method uses similar methods to Multiplication 1 & 2, but with `SBC` instead of `ADC` and has extra steps for computing the remainder

## Addresses
  The programs use the following addresses for each component:
 - `$00F0` : The initial number of the equation (dividend, multiplicand, etc.).
 - `$00F1` : The second number of the equation (divisor, multiplier, etc.).
 - `$00F2` : The result of the equation (in the case of Multiplication2, it is the high byte of the result).
 - `$00F3` : Only used in Division1 and Multiplication2.
   - Division1: The remainder of the operation.
   - Multiplication2: The low-byte of the result.
