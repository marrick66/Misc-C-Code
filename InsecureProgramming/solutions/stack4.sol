    This one is tricky, since we need to set the buffer to a value that contains the newline character.  Once gets() detects the newline character, it stops reading and replaces that newline with a null byte.  This terminates the string. Since 0xa is the second least significant byte, the most significant and second most significant bytes are not read.  Plus, that newline gets replaced with 0x0. So, if we overflowed the buffer with the value 0x000d0a00, this is what would happen:

1. Prior to the first character is read into the cookie(in little endian order of bytes):

cookie = undefined (whatever was on the stack prior to this is still there).

2. After the first character is read (on most 32 bit systems, the integer type is 4 bytes):

0x00 -> cookie = 0x00, undefined, undefined, undefined

3. After the second character is read:

0x0a -> cookie = 0x00, 0x0a, undefined, undefined

4. gets() terminates since 0x0a is the newline character, and replaces it with a null byte:

cookie = 0x00, 0x00, undefined, undefined.

The problem is that we'll never get the whole cookie value we want with the normal way of overflowing the buffer. I don't think there's any way to do this by just setting the cookie to the value we want.

So, the possibilities I see are:

1. Set the return address to the printf("You win!") statement, which would require disassembly to get its address.
2. Create shellcode to calculate and set the cookie to the value you want, and call the function again?  This seems messy since we have to wait for the method to return and the stack is in an undefined state.

Method one is the easier of the two, and you can do it with just input and no shellcode. What I need to know do this:

1. The address to overwrite the return address with: 0x080484cd, which is the start of loading the "You win!" pointer on the stack and calling printf.
2. How many bytes of padding before overwriting the return address: The buffer size + cookie size + misc stack padding? + saved EBP.  We have to assume some padding since it aligns the stack on a an address that's a multiple of 16.

Solution 1 works:

Here's the winning command: python -c "a = 'AAAA' * 24 + '\xcd\x84\x04\x08'; print(a)" | ./stack4

It prints "You win!" then segfaults because the stack is crapped out now.

The number of padding makes sense, since 4 bytes * 20 fills the buffer, 4 bytes for the cookie, and 4 bytes for the saved ebp.  That's 4 bytes * 22 = 88 bytes for the actual memory to overwrite, and the next multiple of 16 is 96. That's 8 more bytes or 2 more words, making 4 bytes * 24 enough to overwrite up to the return address.
