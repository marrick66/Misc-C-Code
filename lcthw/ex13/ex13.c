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
	//result in a segfault.
	char *states[] =
	{
		"California", "Oregon",
		"Washington", "Texas"
	};

	int num_states = 4;

	for(i = 0; i < num_states; i++)
	{
		printf("State %d is %s\n", i, states[i]);

	}

	return 0;
} 
