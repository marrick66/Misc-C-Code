#include <stdio.h>
#include <stdint.h>

int main(int argc, char *argv[])
{
	int i = 1;
	int64_t j = INT64_MAX - 1;
	//When i and j are added, i is promoted to an int64_t (in this case), the 
	//two are added, and the result is downcasted back to an int, causing truncation.
	int k = i + j;
	//In this case, i is promoted, the addition is performed, and the result is
	//stored as the promoted type with no truncation.
	int64_t l = i + j;

	printf("size of long: %ld\n", sizeof(long));
	printf("size of int: %ld\n", sizeof(int));

	printf("long j: %ld\n", j);
	printf("int k: %d\n", k);
	printf("long l: %ld\n", l);

	return 0;
}
	
