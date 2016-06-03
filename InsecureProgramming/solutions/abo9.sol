This exercise allocates two 256 character buffers on the heap (pbuf1 and pbuf2). From my instance of gdb, these pointers are at 0x804b008 and 0x804b110, respectively.The difference between the two addresses is 264 bytes, so it's the buffer itself plus some miscellaneous bytes.

I've dug into the most recent source of malloc, and I need to verify which method it uses to allocate:

1. Best fit
2. Memory mapping
3. Caching

Based on the size of the allocation, it looks like it's using the standard malloc best fit algorithm, retrieving from a bin at index 33 (256 + 4 + 4)/8 (we add 8 for the header size value and padding to make it divisible by 8). This verifies why the difference between the two chunks is 264.

Since the gets() is unsafe, we can overflow the first chunk into the second, overwriting header and other data in the second. Doing this with garbage data will cause an error freeing the second chunk. 


