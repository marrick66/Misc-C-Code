#include <stdio.h>
#include <stdlib.h>

void set_int(int *p);

int main(void)
{
    int *p = NULL;

    set_int(p);

    printf("value: %d\n", *p);

    return 0;
}

//So, a copy of the pointer argument is passed in,
//which when set by malloc, points to an int on the heap.
//since this is a copy, the original pointer won't point
//to the one sent, causing a segfault.
void set_int(int *p)
{
    p = malloc(sizeof(int));
    *p = 10;
}    
