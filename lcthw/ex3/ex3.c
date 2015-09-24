#include <stdio.h>

int main(int argc, char *argv[])
{
	int age = 10;
	int height = 72;
	
	/*
	The printf function has a format string vulnerability.  For
	every format in the string, the code attempts to read (or write) a 
	value off the stack.  So, if we omitted the age or height parameter,
	it would retrieve the first value above the format string on the stack.
	This can be used to exploit information leakage about data on the stack,
	or even override the return address of the function by using the %n 
	format.  This format takes the current number of characters written and
	saves it to the provided int pointer. Carefully crafted input can write		
	arbitrary data to memory locations, either on the stack or to some other	
	variable where the address is known.
	*/

	printf("I am %d years old.\n", age);
	printf("I am %d inches tall.\n", height);

	return 0;
}
