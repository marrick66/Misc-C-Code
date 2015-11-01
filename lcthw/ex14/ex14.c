#include <stdio.h>
#include <ctype.h>

int can_print_it(char value);
void print_letters(char letters[]);

void print_arguments(int argc, char *argv[])
{
	for(int i = 0; i < argc; i++)
	{
		print_letters(argv[i]);	//Note that we're passing in a character pointer
								//instead of a character array.
	}
}

void print_letters(char letters[])	//For this example, we should be able to change the 
									//parameter to a character pointer for printing purposes.
{
	for(int i = 0; letters[i] != '\0'; i++)
	{
		if(can_print_it(letters[i]))
		{
			printf("%c = %d ", letters[i], letters[i]);
		}
	}		

	printf("\n");
}

int can_print_it(char value)
{
	return isalpha(value) || isblank(value);	
}

int main(int argc, char *argv[])
{
	print_arguments(argc, argv);

	return 0;
}
		
