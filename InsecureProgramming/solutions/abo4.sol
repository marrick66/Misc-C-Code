    This exercise also has a function pointer, however, it is not located on the stack.  Since it's a global defined variable, 
it should be located in the .data section of the executable (which isn't immediately overwritable at first glance). In the main function, a character pointer is defined to a location on the heap that's the size of the second argument passed to the program (including the trailing '\0'). Then, a character buffer of 256 bytes 
is defined lower on the stack. The function pointer is then set to point to puts(), the first command line argument is copied into the buffer (unsafely), 
the second command line argument is copied into the heap, and finally the function pointer is called with a third command line argument. At this point, the program should run forever as it has a while loop that never ends.


    The goal should be to overwrite the function pointer, so how do we do that? First, we'll need to know the address of the pointer in memory, which we do by doing
some debugging in gdb:
&fn = 0x804a030
Then, we'll need to replace that with an address pointing to a function of our choice, which we'll choose system():
&system = 0x80483b0

Since these addresses are below the stack, we can overflow it all we want and never change them directly.  So, we need another option.  pbuf is a char pointer, and it is above buf on the stack, so we should be able to overwrite it with an address of our choice.  If we overwrite it with the address of fn, fn will be overwritten with bytes of our choice input from command line parameter 2. Then, system() will be called with the value from command line parameter 3 and we'll have a shell.

Result: It works, with the following paramters:
./abo4 $(python -c "print(('\x30\xa0\x04\x08' * 66) + ' \xb0\x83\x04\x08 /bin/sh')")

Other shellcode could be executed if we overwrote fn with the address of buf, if we wanted.
