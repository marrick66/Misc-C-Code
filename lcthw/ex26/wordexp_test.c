#include <wordexp.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    if(argc > 1)
    {
        wordexp_t value;
        wordexp(argv[1], &value, 0);
        
        for(unsigned int i = 0; i < value.we_wordc; i++)
        {
            printf("%s\n", value.we_wordv[i]);
        }

        wordfree(&value);
    }

    return 0;
}
