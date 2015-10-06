#include <stdio.h>

int main(int argc, char *argv[])
{
	//The variable isn't initialized, so we don't
	//really have an idea as to what it might be.
	int i;

	printf("Initial value of i: %d\n", i);

	//There's no way to know how long this will run...
	while(i < 15)
	{
		printf("%d", i);
		i++;
	}
	
	printf("\n");
	return 0;
}
