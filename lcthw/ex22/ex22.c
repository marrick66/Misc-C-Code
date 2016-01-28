#include <stdio.h>
#include <dbg.h>
#include "ex22.h"


//Counterintuitive to what I'm used to, as static in the
//global context means it's only available to this file.
static int THE_AGE = 37;

//The variable is declared externally in the header file,
//but we actually define it here, otherwise other files that
//attempt to use it will fail.
int THE_SIZE = 1000;

int get_age()
{
	return THE_AGE;
}

void set_age(int age)
{
	THE_AGE = age;
}

double update_ratio(double new_ratio)
{
	//In function scope, this is shared between
	//invocations of the function.
	static double ratio = 1.0;

	double old_ratio = ratio;
	ratio = new_ratio;

	return old_ratio;
}

void print_size()
{
	log_info("I think size is: %d\n", THE_SIZE);
}


