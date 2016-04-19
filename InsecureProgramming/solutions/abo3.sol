In this exercise, a function pointer has been defined pointing to the system() function.  This is defined higher than the buffer, then immediately set to 
point to the puts() function. When the first command line argument is copied into the buffer, we should be able to overwrite the function pointer back to system(), 
which is then called with the second argument from the command line.

So, we attempt to overwrite the buffer with:
256 bytes of padding
4 byte function pointer -> 0x8048380 (found via GDB).

Calling it with the following arguments will start a shell:
abo3 $(python -c "print(('A' * 256) + '\x80\x83\x04\x08')") /bin/sh

Alternatively, for arbitrary code execution we can overwrite the function pointer with an address pointing to shellcode in the buffer, which would be more difficult
than the previous solution.
