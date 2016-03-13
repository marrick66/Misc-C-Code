#include "logfind.h"

#define ORARG "-o"
#define CONFIG_PATH "~/.logfind"
#define MAX_LINES 1000
#define MAX_LENGTH 512

int main(int argc, char *argv[])
{
    int search_argc = 0;
    char **search_argv = NULL;
    struct LineNode *logfiles = NULL;
    struct LineNode *currentLogFile = NULL;
    unsigned int ORFlag = 0;
    int rc = 0;

    check(argc > 1, "No search terms given.");

    ORFlag = GetORFlag(argc, argv);

    rc = GetSearchArgs(ORFlag, argv, argc, &search_argv, &search_argc);
    check(rc == 0, "Unable to get search args.");

    logfiles = GetLines(CONFIG_PATH);
    check(logfiles != NULL, "No log files provided, or unable to get log files from config.");

    currentLogFile = logfiles;
    while(currentLogFile != NULL)
    {
        char *path = currentLogFile->Line;
     
        printf("Searching for terms in file %s\n", path);
       
        if(SearchFile(path, ORFlag, (const int)search_argc, (const char **)search_argv))
            printf("Found term(s) in file %s\n", path);

        currentLogFile = currentLogFile->Next;
    }
        
    DeleteLines(logfiles);
    return 0;
error:
    DeleteLines(logfiles);
    return -1;
}

unsigned int GetORFlag(int argc, char *argv[])
{
    if(argc > 1 && strncmp(argv[1], ORARG, 2) == 0)
        return 1;
    else
        return 0;
}
/*
    Given an OR flag and the command line arguments, we determine:
    1. Where the search arguments start in the array.
    2. The number of search arguments.
    
    If there are no search arguments, we give an error. Otherwise,
    we set the SearchArgCount value to the number of search arguments, 
    and set the SearchArgs to point to the start of the search arguments.
*/
int GetSearchArgs(unsigned int ORFlag, const char *Args[], const int ArgCount, char ***SearchArgs, int *SearchArgCount)
{
    int search_count = 0;
    int search_index = 0;

    if(ORFlag)
        search_index = 2;
    else
        search_index = 1;

    search_count = ArgCount - search_index;

    check(search_count > 0, "No search arguments given.");

    *SearchArgCount = search_count;

    //The rare triple pointer here.  What I'm trying to do
    //here is to pass in a reference to a char pointer array,
    //and set it to the beginning of the search terms passed in.
    *SearchArgs = (char **)&Args[search_index];

    return 0;
    
error:
    return -1;
}

/*
    To search a file, we need to get all of the lines in the file first.
    Then, there are two ways of searching for terms, AND and OR. For AND terms,
    all of the search terms have to be found at least once in the file. For OR terms,
    any one of them should have been found at least once. We attempt to short circuit if
    the finding criteria is satisfied prior to searching all of the lines. We return 1 if
    the terms were found, and 0 if not found.
*/
int SearchFile(const char *FilePath, const unsigned int ORFlag, const int SearchArgCount, const char **SearchArgValues)
{
    short was_found[SearchArgCount];
    int found_count = 0;
    struct LineNode *file_lines = NULL;
    struct LineNode *current_line = NULL;

    memset(was_found, 0, SearchArgCount * sizeof(short));
    file_lines = GetLines(FilePath);
    current_line = file_lines;
    check(file_lines != NULL, "Unable to get lines from %s.", FilePath);

    while(current_line != NULL)
    {
        for(int i = 0; i < SearchArgCount; i++)
        {
            if(strstr(current_line->Line, SearchArgValues[i]))
            {
                printf("found term \"%s\" on line %d: %s\n", SearchArgValues[i], current_line->LineNumber, current_line->Line);

                if(!was_found[i])
                {
                    was_found[i] = 1;
                    found_count++;
                }
            }

            if((ORFlag && found_count > 0) || (!ORFlag && found_count >= SearchArgCount))
            {
                DeleteLines(file_lines);
                return 1;
            }
        }

        current_line = current_line->Next;
    }

    DeleteLines(file_lines);
    return 0;

error:
    DeleteLines(file_lines);
    return 0;
}
