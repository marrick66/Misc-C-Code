#include <stdio.h>
#include <string.h>
#include <dbg.h>
#include <limits.h>
#include "lines.h"

//Determines if the first argument passed in is the OR flag.
unsigned int GetORFlag(int argc, char *argv[]);

//Gets the listing and count of terms to search for.
int GetSearchArgs(unsigned int ORFlag, const char *Args[], const int ArgCount, char ***SearchArgs, int *SearchArgCount);

//Searches the file for the specified terms, based on the OR flag.
int SearchFile(const char *FilePath, const unsigned int ORFlag, const int SearchArgCount, const char **SearchArgValues);
