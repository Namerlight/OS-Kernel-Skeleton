# Operating System Kernel Skeleton

For NSU CSE323 (Operating Systems) Project. Originally compild in NASM and emulated with QEMU.

This consists of three main sections: bootloader, 16-to-32-bit converter and the basic OS kernel. Unfortunately, 2/3 of the systems don't actually work properly. Assembly, more like pain-in-my-ass-embly. The basic structure and code are based off cfenollossa's OS Tutorial. I suppose I'll come back to this one day when I actually have time and fix it.

Ideally, this would've been a fully functional skeleton for an Operating System, with several basic functions written into the kernel.c file that the OS could execute.

To run this, make sure you have qemu installed. Go to the terminal and enter 

```
qemu-system-x86_64 32.bin
qemu-system-x86_64 OS.bin
```

To run the 16-32-bit switcher and the OS kernel program respectively. If they don't work, you may need to use nasm to recompile the files.

Credits: Shadab Hafiz Choudhury
