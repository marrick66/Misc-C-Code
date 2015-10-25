#include <stdio.h>

int main(int argc, char *argv[])
{
	int areas[] = {10, 12, 13, 14, 20};
	char name[] = "Sean"; //This form adds the zero terminator for you.
	char full_name[] = 
	{ 'S', 'e', 'a', 'n', ' ', 'M', 'a', 'y', 'f','i', 'e', 'l', 'd', '\0' }; //This one does not. 
	//If the terminating zero is removed, any printf calls with the %s format will continue to print characters until a zero is reached.  
	//These may not all be valid ascii characters.

	//Warning: On some systems you may have to change %ld
	//in this code to a %u since it will use unsigned ints.
	printf("The size of an int: %d\n", sizeof(int));
	printf("The size of areas (int[]): %d\n", sizeof(areas));
	printf("The number of ints in areas: %d\n", sizeof(areas) / sizeof(int));
	printf("The first area is %d, the 2nd %d\n", areas[0], areas[1]);
	printf("The size of a char: %d\n", sizeof(char));
	printf("The size of name (char[]) %d\n", sizeof(name));
	printf("The number of chars %d\n", sizeof(name) / sizeof(char));
	printf("The size of full_name (char[]): %d\n", sizeof(full_name));
	printf("The number of chars: %d\n", sizeof(full_name) /sizeof(char));
	printf("Name=\"%s\" and full_name=\"%s\"\n", name, full_name);

	return 0;
}
