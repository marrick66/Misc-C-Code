In this exercise, there is a global 256 character buffer buf, that is initialized with 1 at index zero and filled the rest of the way with zeros. The program does an unsafe string copy that can be overflowed.  However, can we do anything with it?

In the binary, the buf variable is stored in the .data section, which is writable. However, the next writable section is the uninitialized .bss section, which has no variables in it. It doesn't have any memory that can be used for exploitation, as far as I can tell, either. 

At this point, we would need an extremely large buffer to get anywhere near the stack, since it starts at a high memory address. For example, when breaking at main() in gdb, the stack pointer is located at 0xffffd170.  The buf variable is located at 0x804a040, so the difference between the two is almost the entire logical address space of the process (~4GB on 32 bit systems). Putting a buffer that size in the command line argument will make the stack grow downward enough to probably overflow the entire thing(after research, the default stack size it 8192Kb, so it definitely will).

I can't think of any exploitation path at this point.

Post reading the solution:
Apparently in older compiler versions, the .ctors and .dtors sections are located after the .data section, allowing overflowing to write to them. In newer versions, these are replaced by .init_array and .fini_array, which also occur prior to the .data section.
