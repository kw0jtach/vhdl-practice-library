# vhdl-practice-library

This repository contains a week-by-week breakdown of a VHDL training course focused on designing and simulating digital circuits. The goal is to progressively master combinational and sequential logic using VHDL syntax and constructs.

---

## Week 1 — Basic Combinational Logic

**Objective:** Master the basic VHDL syntax (entity, architecture, and combinational process).

### Topics:
- AND gate
- OR gate
- NOT gate
- NAND, NOR, XOR, XNOR gates
- Custom logic function (e.g., `(A AND B) OR (NOT C)`)

---

## Week 2 — Advanced Combinational Circuits

**Objective:** Learn how to manage more complex circuits involving selection and encoding.

### Topics:
- MUX 2:1 and 4:1
- DEMUX 1:2
- Decoder 2:4 and 3:8
- Encoder 4:2
- 1-bit and 4-bit comparator

**Mini Project:** Design a simple selection and comparison circuit.

---

## Week 3 — Flip-Flops and Latches

**Objective:** Introduction to sequential components and edge sensitivity.

### Topics:
- SR Latch
- D Latch
- D Flip-Flop
- T Flip-Flop
- JK Flip-Flop
- D Flip-Flop with synchronous and asynchronous reset

**Mini Project:** 4-bit register implementation.

---

## Week 4 — Registers and Counters

**Objective:** Work with groups of bits and implement various counters.

### Topics:
- Basic parallel register (4-bit or 8-bit)
- Shift Registers (SIPO, PISO)
- Asynchronous binary counter
- Synchronous binary counter
- UP/DOWN counter

**Mini Project:** Mod-10 counter for BCD display.

---

## Week 5 — Arithmetic Circuits

**Objective:** Learn how to implement arithmetic operations in VHDL.

### Topics:
- Half-Adder
- Full-Adder
- 4-bit Adder
- 4-bit Subtractor
- Combined Adder/Subtractor

**Mini Project:** 4-operation mini-ALU (ADD, SUB, AND, OR)

---

## Week 6 — Advanced Blocks and FSM

**Objective:** Build first-level intelligent systems with memory and control logic.

### Topics:
- Finite State Machine (Moore or Mealy)
- Simple ROM
- Simple RAM (synchronous read/write)

**Final Project:** Integrated mini system
- FSM to control a sequence (e.g., traffic light controller)
- Use of registers and/or memory blocks to store states or counters

---

## Tools and Simulation

You are encouraged to use tools like:
- Vivado for synthesis and implementation
- GTKWave for waveform visualization if you don't want to use Vivado

---

## License

This content is for educational purposes. You are free to reuse and modify the designs with proper credit.

