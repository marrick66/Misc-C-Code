#include <stdio.h>

int main(int argc, char *argv[])
{
	int ages[] = { 23, 43, 12, 89, 2 };
	char *names[] = { "Alan", "Frank", "Mary", "John", "Lisa" };

	int count = sizeof(ages) / sizeof(int);

	//Use regular array access to process...
	for(int i = 0; i < count; i++)
	{
		printf("%s has lived %d years...\n", names[i], ages[i]);
	}

	printf("---\n");

	//Use pointer offsets to access the elements...
	for(int i = 0; i < count; i++)
	{
		printf("%s has lived %d years...\n", 
			*(names + i),		//Offsets to the ith item from the starting
			*(ages + i));		//pointer. Note that the address is really
								//pointer + (i * size of variable). Then,
								//it's dereferenced to get the value.
	}

	printf("---\n");

	int *current_age;
	char **current_name;

	//Use pointer arithmetic to acess elements.  Subtracting two pointers is equivalent to 
	//(Address1 - Addres22) / size of variable.
	for(current_age = ages, current_name = names; (current_age - ages) < count; current_age++, current_name++)
	{
		printf("%s has lived %d years...\n", *current_name, *current_age);
	}
	 
	return 0;
}
