# Unhandled Memory Access in Assembly

This repository demonstrates a common error in assembly programming: accessing memory without proper bounds checking.  The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version.

The core issue is accessing memory at `[ebx + ecx*4 + 0x10]` without verifying if this address is within the program's allocated memory space.  This can lead to segmentation faults or unpredictable behavior. The solution introduces checks to prevent accessing invalid memory locations.