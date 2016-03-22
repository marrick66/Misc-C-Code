The input buffer is 80 bytes, so we need to fill it first with:
1. 80 bytes of whatever data.
2. Below the buffer on the stack is the cookie, so fill it with "DCBA" due to little endian byte order.

On the command line, I used the following to input the buffer into the program:
python -c "a = 'DCBA' * 21; print(a)" | ./stack1
