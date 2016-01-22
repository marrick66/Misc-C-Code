#include "dbg.h"

int main(int argc, char *argv[])
{
	int valid = 0;

	check_debug(valid, "Passed");

error:
	return 0;
}
