This exercise has no printf call to return to, so we'll probably have to write some shellcode.  What I know so far:

1. The buffer is 256 bytes long.
2. With ASLR turned off, the buffer starts at address 0xffffd060
3. When compiled, strcpy is part of libc, so puts should be available to call.

The plan:
I should be able to use the same stack setup without shellcode, by finding the address of the puts function, overwriting the return address with it, setting up the stack to send a string pointer to puts, and loading the string up.

NOTE: To do this via shellcode, we'd have to do something like a NOP sled + syscall to print. If I have time, I will attempt to do both.

Stack diagram (from bottom to top):
"You win!\0" -> 9 bytes
pointer to "You win!" -> 4 bytes
dummy return address -> 4 bytes
return address of puts -> 4 bytes
padding -> 256 + unknown bytes

puts() address: 0xf7e6c650
return address pointer: 0xffffd16c
"You win!" pointer: 0xffffd174
"You win!" location: 0xffffd178

The padding between the start of the buffer to the return address = 268 bytes. 

Result:

Success, with a couple of tweaks.  This command with the malicious buffer works: 
abo1 "$(python -c "print(('AAAA' * 67) + '\x50\xc6\xe6\xf7' + 'BBBB' + '\x68\xd0\xff\xff' +'You Win!\x00')")"

We have to put quotes around the command substitution, so that the space and exclamation point are passed in properly. Also, the command line parameter adjusts the stack some, so the pointer to the "You win!" string had to be adjusted to 0xffffd068.

Now, for some shellcode:

I'll attempt to inject the buffer like so (this is from top to bottom):
"You win!\0" string
NOP sled
PUSH buffer address
CALL puts()
New return address repeated N times.

I'll need to compile some shellcode to get the bytes.  I'll have to debug to get the address of puts(), and make sure the call is not relative.

With my initial buffer, the addresses needed are:
buffer: 0xffffcb80
puts:   0xf7e6c650

So, returning to the puts function works, but calling it does not. I would think it's the instruction, since I know the address is valid. Here's what the issue was, to do an absolute jump or call, you need the segment and the offset.  So, in protected mode, the code segment really isn't a segment, but used for paging (detail doesn't matter right now).  Anyway, when debugging, I was able to read the code segment value in the cs register, and use that for the jmp instruction along with the known address of puts(). That worked.  This is probably the reason why most shellcode uses syscalls, so you won't have to (or be able) to do it this way.
