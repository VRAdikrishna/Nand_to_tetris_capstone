# Nand to Tetris – I Capstone Project

**Name:** VR Adikrishna  
**Roll Number:** 2501730397  
**Course:** Nand to Tetris – I (ETCNTC301)  
**Institution:** K.R. Mangalam University  
**School:** School of Engineering & Technology

## Project Overview

This capstone project implements key components of the Nand to Tetris Hack computer system. It includes the hardware architecture using HDL, a Python-based Hack assembler, and an assembly program that draws a rectangular box on the screen in response to keyboard input.

## Project Components

### Part A – Hardware Implementation

The following HDL files implement the Hack computer architecture:

- `CPU.hdl` – Implements the Hack CPU.
- `Memory.hdl` – Implements the computer's memory system, including RAM, screen and keyboard memory mapping.
- `Computer.hdl` – Connects the CPU, memory and ROM components to form the complete Hack computer.

### Part B – Hack Assembler

A two-pass assembler written in Python translates Hack assembly (`.asm`) programs into Hack machine code (`.hack`).

Features include:

- Translation of A-instructions and C-instructions into 16-bit binary machine code.
- Label handling using a symbol table.
- Allocation of variables starting from RAM address 16.
- Clear error messages with source line numbers for invalid instructions.
- Order-independent destination parsing (for example, `MD` and `DM` are both accepted).

Test programs:

- `Add.asm`
- `Max.asm`
- `Rect.asm`
- `Pong.asm`

The generated machine-code files were compared with the corresponding reference files using the Nand to Tetris Assembler.

### Part C – Screen Drawing Program

`Box.asm` draws a black rectangular box on the Hack screen while a keyboard key is pressed. The screen is cleared when the key is released.

The rectangle dimensions and position are based on the roll number calculation:

- **K = 97** (last two digits of the roll number)
- **K mod 4 = 1**
- **Box width = 16 × (1 + 1) = 32 pixels**
- **Starting screen row = 97**
- **Box height = 20 rows**
- **Starting screen address = 16384 + (32 × 97) = 19488**
- **Words per row = 2**

## Repository Structure

```text
Capstone_VR_Adikrishna_2501730397/
├── CPU.hdl
├── Memory.hdl
├── Computer.hdl
├── assembler.py
├── Add.asm
├── Add.hack
├── Max.asm
├── Max.hack
├── Rect.asm
├── Rect.hack
├── Pong.asm
├── Pong.hack
├── Box.asm
├── Box.hack
└── README.md
```

The project report is provided separately.

## Tools Used

- Python
- Hack Assembly Language
- HDL
- Nand to Tetris Hardware Simulator
- Nand to Tetris Assembler
- Hack CPU Emulator
- Visual Studio Code

## Testing and Verification

The HDL components were tested using the Nand to Tetris Hardware Simulator. Successful test results were recorded for `Memory.tst`, `ComputerAdd.tst` and `ComputerMax.tst`.

The Python assembler was tested with `Add.asm`, `Max.asm`, `Rect.asm` and `Pong.asm`. The generated machine-code files were compared with the corresponding reference files, and the comparisons were successful.

The `Box.asm` program was assembled into `Box.hack` and tested in the CPU Emulator. The box appeared while a key was pressed and the screen cleared after the key was released.

## Conclusion

This project demonstrates the implementation of a basic computer architecture, the translation of assembly language into machine code, and interaction with the Hack computer's screen and keyboard. It connects hardware design concepts with low-level programming and computer organization.