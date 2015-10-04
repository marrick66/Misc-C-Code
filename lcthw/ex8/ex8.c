#include <stdio.h>
#include <limits.h>

int main(int argc, char *argv[])
{
	//Note that argv is populated with <command> <arg1> <arg2> ...
	//Which means that a command with no arguments actually has one,
	//the name of the command.
	if(argc == 1)
	{
		printf("You only have one argument.\n");
	}
	else if(argc > 1 && argc < 4)
	{
		printf("Your arguments are:\n");

		for(int i = 1; i < argc; i++)
		{
			printf("%s\n", argv[i]);
		}
	}
	else
	{
		printf("You have too many arguments.\n");
	}

	//This is a separate demonstration of how boolean expressions
	//are really numerical, since the value of the expression is only
	//false if the result equals zero.
	int neg_val = -1;
	if(neg_val)
	{
		printf("%d is actually true!\n", neg_val);
	}

	//A further possible vulnerability of this is integer overflow on 
	//number comparisons, where we want a value to be below some threshold.
	//by adding a large number to a signed integer, we could affect control
	//flow in a way that is unexpected.
	int compare_val = 1000;
	int input_val = INT_MAX;

	if(input_val + compare_val < 1000)
	{
		printf("We shouldn't be able to get here!\n");
	}
}
