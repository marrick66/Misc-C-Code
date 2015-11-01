#include <stdio.h>
#include <ctype.h>
#include <string.h>

int can_print_it(char value);
void print_letters1(char letters[], size_t length);
void print_letters2(char *letters);

void print_arguments(int argc, char *argv[])
{
	for(int i = 0; i < argc; i++)
	{
		print_letters2(argv[i]);	//Note that we're passing in a character pointer
								//instead of a character array.

		print_letters1(argv[i], strlen(argv[i]));
	}
}

void print_letters2(char *letters)	//For this example, we should be able to change the 
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

void print_letters1(char letters[], size_t  length)
{
	for(size_t i = 0; i < length; i++)
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
		
