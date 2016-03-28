In this one, there is no printf("You win!"), so it looks like we need to write some shellcode. So, when overflowing the stack, it should do the following:

1. Have the "You win!" string inserted with a terminating NULL byte.
2. Call printf with the address of the above string at the top of the stack when called.

So, because the program prints the buffer starting address, we can use this as the address to pass to the printf function.  So, a first test shellcode to pass in is:

"You win!\0" + a variable length NOP sled + PUSH buffer address + call printf + variable repeating of the return address.

The things we need for this are:

1. The address of printf
2. The buffer address
3. An offset from the buffer address to overwrite the return address with.
4. Shellcode bytes to push the buffer address to the stack and call printf (from the address above).
5. The nop opcode.

Here are the answers:
1. It actually calls puts (I suppose since there are no format characters) at 0x8048350.
2. 0xffffd10c.
3. "You win!\0" is 9 characters, so make the offset a safe 16 bytes from the start of the buffer, so 0xffffd11c.
4. I compiled the following shellcode in nasm:

    push 0xffffd10c
    call 0x8048350

I then disassembled the object file with objdump -d and got the shellcode bytes:

68 0c d1 ff ff
e8 4c 83 04 08

5. 0x90

This should be all I need. On the first try, I might have some alignment issues with the shellcode.

Ok, so there really is an easier way to do this, without shellcode, I think.  So, we overwrite the return address + a dummy base pointer + a dummy return address + the address of the buffer.  So, when it returns to the puts function, the stack is setup to use the buffer as the string parameter. So, the pattern is like this:

Start of buffer:
"You win!\0"
buffer padding
buffer padding
...
... repeat n times
...
return address to puts
dummy base pointer
dummy return address
buffer address
...
... repeat n times

Ok, so this worked with the following buffer modifications:

buffer padding byte * 96
return address of the call puts instruction
pointer to the string "You win!"
"You win!"

The pointer to the string "You win!" was calculated from the offset from the buffer variable:
96 bytes + 4 byte return address + 4 byte pointer to string = buffer address + 104 bytes.

The reason that the first buffer didn't work is that at some time between the call to puts and its return, the stack got clobbered.  So, I moved the string above the return address and the puts parameter to prevent it from occurring again.
