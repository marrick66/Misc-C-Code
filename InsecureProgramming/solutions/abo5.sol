This code is rather compacted, so let's break it down into parts. What we know:

1. There is a character pointer pbuf on the stack, and it points to a location on
the heap that's the size of the second command line argument + 1.

2. There's a 256 byte buffer buf below the pointer on the stack, and can be overflowed to change the value of pbuf.

3. The first command line argument is copied into buf unsafely.

4. At first glance, the heap buffer pointed to by pbuf gets filled by incrementing the character pointer of the second command line argument until a zero is found.

Since we can manipulate the pbuf pointer by overflowing the buf buffer, this allows writing to arbitrary memory.  Since the last function called is exit, main never returns and there's no point in overwriting main's return address.

The plan:
1. Create shellcode to execute.
2. Get the address of buf to jump to to start executing.
3. Get the address of the GOT entry for exit().
4. Overwrite this address with the buf address from step 2.

buf address: 0xffffcf6c
exit GOT entry: 0x804a018

With an executable stack, this works.

POST-SOLUTION:
After finding the old solutions in the wayback archive, they also show that overwriting the .dtors address or the _deregister_frame_info locations will work as well. This is where knowing more about ELF, linking, and loading would come in handy. 
