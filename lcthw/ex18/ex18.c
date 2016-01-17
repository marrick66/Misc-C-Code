#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

//Defining a function pointer, named via typedef
typedef int (*compare_cb)(int a, int b);

//Print the error description (if one exists), a user supplied message, and exits the program.
void die(char * message)
{
	if(errno)
	{
		perror(message);
	}
	else
	{
		printf("ERROR: %s\n", message);
	}

	exit(1);
}

int *bubble_sort(int *source, int count, compare_cb compare)
{
	int temp = 0;
	int *dest = malloc(count * sizeof(int));
	memcpy(dest, source, count * sizeof(int));

	for(int i = 0; i < count; i++)
	{
		for(int j = 0; j < count - 1; j++)
		{
			if(compare(dest[j], dest[j+1]) > 0)
			{
				temp = dest[j];
				dest[j] = dest[j+1];
				dest[j+1] = temp;
			}
		}
	}

	return dest;

}

int sorted_order(int a, int b)
{
	return a - b;
}

int reverse_order(int a, int b)
{
	return b - a;
}

int strange_order(int a, int b)
{
	if(a == 0 || b == 0)
	{
		return 0;
	}
	else
	{
		return a % b;
	}
}

void test_sorting(int *numbers, int count, compare_cb compare)
{
	int i = 0;
	int *sorted = bubble_sort(numbers, count, compare);

	if(!sorted)
		die("Failed to sort!");

	for(i = 0; i < count; i++)
	{
		printf("%d ", sorted[i]);
	}
	
	printf("\n");

	free(sorted);
}

int main(int argc, char *argv[])
{
	if(argc < 2)
		die("USAGE: ex18 4 3 1 5 6");

	int count = argc - 1;
	int i = 0;
	
	//This really adjusts the argv array to skip the first element,
	//which is the program name.
	char **inputs = argv + 1;

	int *numbers = malloc(count * sizeof(int));
	if(!numbers)
		die("Memory error.");

	for(i = 0; i < count; i++)
	{
		numbers[i] = atoi(inputs[i]);
	}

	test_sorting(numbers, count, sorted_order);
	test_sorting(numbers, count, reverse_order);
	test_sorting(numbers, count, strange_order);

	free(numbers);

	return 0;
}

