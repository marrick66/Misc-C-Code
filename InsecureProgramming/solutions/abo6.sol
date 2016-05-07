In this exercise, we once again on the stack we have a pointer to the heap (pbuf) followed by a 256 character buffer (buf).  The buffer (buf) can be overflowed to alter the value of pbuf, and the second command line argument is then written to it.  This allows writing to an arbitrary memory address, as before.  However, after strcpy is called, the program immediately executes an infinite loop.  

The issue is, how do we divert execution prior to the infinite loop? The only plan I can think of is to overwrite the return address stored prior to the call to strcpy().  We'll need the debugger to find what this address is:

Second strcpy() return value location: 0xffffcf4c

pbuf is overwritten with this memory location, which means that the second command line argument gets copied there.  If we pass in the location of buf (0xffffcf6c), the second strcpy returns to any shellcode input there (assuming the stack is executable). 
