#include <stdio.h>
#include <stdlib.h>

void set_int(int **p);

int main(void)
{
    int *p = NULL;

    set_int(&p);

    printf("value: %d\n", *p);

    return 0;
}

//We pass in a copy of the pointer to the pointer, so that
//we're modifying the original pointer, and not a copy of it.
void set_int(int **p)
{
    *p = malloc(sizeof(int));
    **p = 10;
}    
