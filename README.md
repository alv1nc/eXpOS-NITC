# eXpOS Kernel Implementation (OS Lab)

An implementation of **eXpOS (eXperimental Operating System)** developed from scratch as part of the undergraduate Operating Systems Laboratory curriculum. The project targets the **XSM (eXperimental String Machine)** architecture, utilizing the **SPL (System Programmer's Language)** compiler for core kernel modules/interrupts and the **ExpL (Experimental Language)** cross-compiler for application programs.

This repository serves as a comprehensive log and structural reference for the entire development journey, explicitly detailing milestones completed up to **Stage 27 (Pager Module)**.

---

## 📌 Project Architecture & Environment

The OS execution lifecycle moves incrementally from low-level bootstrap code up to dynamic multi-user memory swapping. The environment is partitioned as follows:
* **Target Architecture:** XSM Simulator (`xsm` / `nexsm`).
* **Disk Formatting & Injection:** `xfs-interface` (`nexfs-interface`).
* **Kernel & Subsystems:** Written in SPL (`.spl` $\to$ `.xsm`).
* **User Application Land:** Written in ExpL (`.expl` $\to$ `.xsm`).

---

## 🗺️ Execution Roadmap & Completion Status

Following the official [eXpOS NITC Roadmap](https://exposnitc.github.io/Roadmap.html), the milestones are segmented below. 

### 🟢 Phase 1: Preparatory Stages (Stages 1 – 12)
*Focuses on hardware abstractions, bootstrap sequences, stack boundaries, and single-process scheduling.*
- [x] **Stage 1 & 2:** System Setup & eXpFS Filesystem formatting exploration using `fdisk`.
- [x] **Stage 3:** Writing the hardware Bootstrap Loader to jump execution to physical block 0.
- [x] **Stage 4 & 5:** Mastered System Programming Language (SPL) syntax and `xsm --debug` tracing.
- [x] **Stage 6 & 7:** Loading and running the first custom user program satisfying the XEXE Application Binary Interface (ABI).
- [x] **Stage 8 & 9:** Handling Timer Interrupt hardware mechanics and shifting execution to a dedicated Kernel Stack.
- [x] **Stage 10:** Consolidating user-level terminal output (`Write` system call routing through Console Interrupts).
- [x] **Stage 11:** Introduction to high-level application code translation using ExpL.
- [x] **Stage 12:** Designing the baseline model for time-multiplexed execution (Intro to Multiprogramming via a hardcoded `idle` process).

### 🟡 Phase 2: Intermediate Modular Kernel (Stages 13 – 19)
*Transitions the flat kernel architectural layout into strict functional subsystems managed via dedicated system modules.*
- [x] **Stage 13:** Designing the **Boot Module (Module 7)** to initialize state tables (Process Table, Memory Free List) upon boot.
- [x] **Stage 14:** Implementing a Preemptive **Round-Robin Scheduler (Module 5)** to swap execution states.
- [x] **Stage 15:** Structuring the **Resource Manager (Module 0)** to isolate device acquisition locks.
- [x] **Stage 16:** Handling incoming terminal streams asynchronously via the Console Input Interrupt.
- [x] **Stage 17:** Rewriting process instantiation to dynamically read binaries via a formal `Exec` mechanism.
- [x] **Stage 18 & 19:** Incorporating background hardware signaling mechanisms through the asynchronous Disk Interrupt Handler and Kernel Exception Handler.

### 🔴 Phase 3: Advanced Subsystems & Virtual Memory (Stages 20 – 27)
*Building robust system services, atomic synchronization primitives, hierarchical multi-user filesystems, and memory virtualization mappings.*
- [x] **Stage 20:** Concluding core process lifecycles via the implementation of recursive `Fork` allocation and execution `Exit` calls.
- [x] **Stage 21 & 22:** Incorporating inter-process synchronization mechanics (`Wait`, `Signal`) and atomic user-land Semaphores.
- [x] **Stage 23, 24, & 25:** Engineering the underlying eXpFS File System layer—building `Create`, `Delete`, `Open`, `Close`, `Read`, and `Write` handlers alongside global Shared File Tables and Disk Inode blocks.
- [x] **Stage 26:** Elevating isolation barriers by designing Multi-User Access Control authentication patterns via a root `Login` framework, `Logout`, `Newusr`, and `Remusr` controls.
- [x] **Stage 27: Pager Module [CURRENT MILESTONE]** *Implemented an advanced Virtual Memory subsystem. Designed an asynchronous page-daemon routine (**Module 6**) tasked with monitoring memory pressure, selecting victim pages via the second-chance algorithm, executing page out operations to the disk swap zone, and resolving on-demand Page Faults dynamically.*

---

## 📂 Source Code Tree Structure

The codebase layout tracks individual stages within separate `s<no>` subdirectories inside both the system and application layers:

```text
.
├── spl/
│   └── spl_projs/
│       ├── s1/
│       ├── s2/
│       └── s27/                # final Stage 27 modules
│           ├── os_startup.spl
│           ├── timer.spl
│           ├── int_4.spl
│           └── ...
│
├── expl/
│   └── samples/
│       ├── s1/
│       ├── s2/
│       └── s27/                # Stage 27 user applications
│           ├── login.expl
│           ├── shell.expl
│           └── Assgn/          # Stage 27 testing code (merge sort, etc.)
│
└── xfs-interface/
    └── batch_27.txt            # batch file for loading Stage 27 code onto disk
```
## 📖 Official Documentation Links & References

To inspect architectural guidelines, interface bounds, hardware structural specifics, or state table layout rules, refer to the project references:

* **Main Project Platform Portal:** [eXpOS NITC Home](https://exposnitc.github.io/)
* **Step-by-Step Implementation Roadmap:** [eXpOS Roadmap Hub](https://exposnitc.github.io/Roadmap.html)
* **Instruction Set Architecture & Virtual Hardware Specification:** [XSM Simulator Engine Model](https://exposnitc.github.io/expos-docs/virtual-machine-spec/)
* **Application Binary Interface Rules:** [eXpOS ABI Specification](https://exposnitc.github.io/expos-docs/abi/)
* **Storage Array Specifications:** [eXpFS File System Standards](https://exposnitc.github.io/expos-docs/filesystem-spec/)
* **SPL Language Compiler Design Rules:** [System Programming Language Syntax Guide](https://exposnitc.github.io/expos-docs/spl/)
