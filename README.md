# ReCOP
---

## Overview
ReCOP is a custom-designed multicycle CPU architecture built using VHDL. It consists of a **datapath** and a **control unit** interconnected through a top-level entity. This processor is designed to execute a simple custom instruction set efficiently, supporting basic ALU operations, memory access, and control flow, along with specialized registers (SOP, SIP, SVOP, ER, EOT) for extended system functionality.

---

## Project Structure

### 1. **Datapath**
The datapath handles:
- **Program Counter (PC) operations**
- **Instruction fetch and decoding**
- **Register file operations (RF)**
- **ALU computations**
- **Data memory reads/writes**
- **Specialized registers** such as:
  - SOP
  - SIP
  - SVOP
  - ER 
  - EOT
- **DPCR**

**Key datapath components include**:
- `program_counter`
- `instruction_register`
- `register_file`
- `memory_address_register`
- `data_memory`
- `prog_mem`
- `alu`
- `muxes` (2, 3, 4 inputs)
- `special registers` (SIP, SOP, SVOP, ER, EOT)
- `dpcr_register`
- `adder_1`

The datapath receives control signals from the control unit to orchestrate data movement and operations across the CPU.

---

### 2. **Control Unit (FSM Controller)**
The control unit is a **micro-coded Finite State Machine (FSM)** that governs instruction execution across multiple clock cycles.

It:
- Sets control signals for datapath units
- Controls micro-states like FETCH1, FETCH2, DECODE, EXECUTE, MEM_ACCESS, WRITE_BACK
- Handles **system resets** and **special operation flows**

**Key control signals generated**:
- Register file control (`rf_wr`, `rf_reset`, `rf_a_re`, `rf_b_re`)
- ALU control (`alu_op`, `alu_reset`, `clr_z_flag`)
- Memory control (`mem_read`, `mem_write`, `mar_ld`, `mar_reset`)
- Program counter control (`pc_sel`, `pc_ld`, `pc_reset`)
- Special register controls (`sip_ld`, `sop_ld`, `svop_ld`, `er_ld`, `eot_ld`)
- DPCR controls (`dpcr_ld`, `dpcr_low_sel`)

---

## Top-Level Architecture

The top entity (`ReCOP_TopLevel`) connects the `datapath` and the `control_unit`, passing outputs like instruction fields (`opcode`, `addressing_mode`) from the datapath to the control unit, and passing control signals from the control unit back to the datapath.

External I/O:
- `sip_input`: Input port for external data into the SIP register
- `sop_output`: Output port from the SOP register

---

## Instruction Set Overview

Supported operations include:
- **Memory operations**: `LDR`, `STR`, `STRPC`
- **ALU operations**: `ANDR`, `ORR`, `ADDR`, `SUBR`, `SUBVR`, `MAX`
- **Control flow**: `JMP`, `PRESENT`, `SZ`
- **Special register ops**: `SSOP`, `SSVOP`, `LSIP`
- **System control**: `SRES`, `CER`, `CEOT`, `SEOT`
- **No operation**: `NOOP`
- **DataCall instructions**: `DATACALL` (DATACALL_REGISTER), `DATACALL2 (DATACALL_IMMEDIATE)`
- **Load Error Register**: `LER`

Each instruction flows through FETCH1 -> FETCH2 → DECODE → EXECUTE → (MEM_ACCESS/WRITE_BACK if necessary).

---

## How to Use

1. **Synthesize** and **program** the design in Quartus Prime.
2. **Simulate** using ModelSim if needed — testbenches should stimulate instructions and monitor outputs.
3. **Load** machine code into program memory (`prog_mem`) via a Memory Initialization File (`.mif`).

---

## Important Notes
- **Initialization**: On reset, all registers are cleared, and the processor starts fetching from PC = 0.
- **Zero flag (Z_FLAG)**: Used for conditional instructions like `PRESENT` and `SZ`.

---
