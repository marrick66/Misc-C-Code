This exercise has an uninitialized 256 byte buffer, which can be overflowed by the unsafe gets() call. On program start, another 256 byte buffer is allocated on the heap via malloc. The unsafe gets() call is performed, followed freeing the heap buffer. 

Via the previous exercises, due to the location of the .bss section, there's really not much that can be overwritten (e.g. symbol tables).  The only thought I have is that the bin information for the chunks might also be uninitialized in the .bss section that can be modified.  However, I doubt it.  I'll have to research it further.

Another thought I had is that there is a function pointer variable that allows hooking into malloc, and if it was uninitialized, could be overwritten by the buffer.  Sadly, it looks like it's dynamically linked and located elsewhere.

So, apparently the heap is located immediately after all of the sections defined in the binary, so we can overwrite the chunk.  However, since this malloc version checks the previous and next chunks pointers, we can't overwrite arbitrary memory.
