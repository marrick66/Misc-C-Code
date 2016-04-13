The problem:
The source code contains a buffer overflow vulnerability (unsafe strcpy function):
char buf[256];
strcpy(buf, argc[1]);

However, it is immediately followed with a call to the exit function:
exit(1);

According to the man page, this function does not return.  So, the process exits before the overwritten return address
is popped off the stack and jumped to. Therefore, the traditional buffer overflow method to control execution
will not work.

Idea 1: I could attempt to overflow the buffer all the way to the global offset table entry for the exit call, but I'm not
sure if this would work because not all of the memory between the stack and the GOT may be writable.  This won't work because the GOT is below the 
stack in address space, and I can only overwrite upwards.

Idea 2: Set the LD_LIBRARY_PATH to load a malicious libc dll that executes arbitrary code. This could work, but the buffer overflow wouldn't be exploited. So,
I doubt this is the solution they're looking for.

Idea 3: Write a parent program that passes a dummy exit handler to the atexit function, then makes a call to execve to start abo2.  This doesn't work because of two reasons. One, all of the exit handlers are discarded when execve is called.  Two, even if it did get passed, you have arbitrary code execution through the handler and wouldn't need the buffer overflow.

So, after tracing through the disassembly of the exit, I can't find any way to exploit it.

AFTERWARD:  So, I broke down and did some googling and others have come to the same conclusion about it not being exploitable on x86.  There is a phrack
article on phrack at http://phrack.org/issues/58/11.html detailing an exploit on HP-UX PA-RISC 1.1 architecures.
