#include <stdio.h>
#include <limits.h>
/*
Some misc notes:
1.  This code shows that the char type is really just a small integer type (a byte).  Which is a number that is
	large enough to hold the basic execution character set (according to the C99 spec).
	If a character from the basic execution set is stored in a char, it's guaranteed to 
	be non-negative.  Any other character is undefined and implementation specific (could be signed,
	unsigned, etc.)
2.	float vs double: a float is a subset of values from the range of double. How each of them are calculated is something
	that requires more space and research.
*/
int main(int argc, char *argv[])
{
	int distance = 100;
	float power = 2.345f;
	double super_power = 56789.4532;
	char initial = 'D';
	char first_name[] = "Sean";
	char last_name[] = "Mayfield";

	printf("You are %d miles away.\n", distance);
	printf("You have %f levels of power.\n", power);
	printf("You have %f super powers.\n", super_power);
	printf("I have an initial %c.\n", initial);
	printf("I have a first name %s\n", first_name);
	printf("I have a last name %s\n", last_name);
	printf("My full name is %s %c %s.\n", first_name, initial, last_name);

	int bugs = 100;
	double bug_rate = 1.2;

	printf("You have %d bugs at an imaginary rate %f.\n", bugs, bug_rate);
	
	long universe_of_defects = 1L * 1024L * 1024L * 1024L;
	printf("The entire universe has %ld bugs.\n", universe_of_defects);
	
	double expected_bugs = bugs * bug_rate;
	printf("You are expected to have %f bugs.\n", expected_bugs);
	
	double part_of_universe = expected_bugs / universe_of_defects;
	printf("That is only %e portion of the universe.\n", part_of_universe);

	char null_byte = '\0';

	int care_percentage = bugs * null_byte;
	printf("Which means you should care %d%%.\n", care_percentage); 

	//This is not in the exercise, but just for informational purposes:
	printf("The max value of int is %d\n", INT_MAX);
	printf("The min value of int is %d\n", INT_MIN);
	printf("The max value of unsigned int is %u\n", UINT_MAX);
	
	//For unsigned integer types, the minimum is always zero.

	//Integer overflows: For signed integers, it's possible that
	//arithmetic on large numbers will cause the variable to wrap around
	//to a negative value. Since these types of operations can be used
	//when allocating dynamic memory, we must be cautious.
	int val1 = INT_MAX;
	int val2 = 1;
	printf("The result of adding %d to %d is: %d\n", val1, val2, val1 + val2);

	return 0;
}
	
