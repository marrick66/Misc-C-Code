#include <stdio.h>

int main(int argc, char *argv[])
{
	int i = 0;

	//argv[0] is the program name, so we skip it.
	for(i = 1; i < argc; i++)
	{
		printf("Argument %d is %s\n", i, argv[i]);
	}

	//In memory, this is an array of pointers to character arrays, not the 
	//characters themselves.  Since these are string literals, they will be in
	//read-only memory, so attempting to set a value like states[0][0] = 'Z' will 
	//result in a segfault (see below).
	char *states[] =
	{
		"California", "Oregon",
		NULL, "Texas"	//NULL is not the same as passing the null byte character \0. Since this is really
						//an array of pointers to strings, it's pointing to nothing at all. If the NULL
						//were replaced by a string of "\0", it would print nothing since the third element
						//in the array points to a valid string (which just happens to be empty).
	};

	int num_states = 4;

	for(i = 0; i < num_states; i++)
	{
		printf("State %d is %s\n", i, states[i]);

	}

	states[0][0] = 'Z'; //Should segfault here.

	return 0;
} 
