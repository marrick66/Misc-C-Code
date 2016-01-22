#include <dbg.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	int valid = 0;

	check_debug(valid, "Passed");
	printf("Test here.");
error:
	return 0;
}
