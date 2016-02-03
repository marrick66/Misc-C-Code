#include <stdio.h>
#include <string.h>
#include <dbg.h>

int normal_copy(char *from, char *to, int count)
{
    int i = 0;
    
    for(i = 0; i < count; i++)
    {
        to[i] = from[i];
    }
    
    return i;
}

int duffs_device(char *from, char * to, int count)
{
    {
        //Integer division will drop the remainder, so 
        //this is equivalent to (count / 8) if count is
        //divisible by 8, (count / 8) + 1 if it is not.
        int n = (count + 7) / 8;
        
        switch(count % 8)
        {
            //The first time through this do loop, the remainder
            //of count % 8 characters are copied over.  The remaining
            //number of characters to be copied will be a multiple of
            //8 at this point. n - 1 represents the remaining number
            //of 8 character blocks to copy, which is done by each
            //case statement falling through to the next one.
            case 0:
                do {
                    *to++ = *from++;
                    case 7:
                    *to++ = *from++;
                    case 6:
                    *to++ = *from++;
                    case 5:
                    *to++ = *from++;
                    case 4:
                    *to++ = *from++;
                    case 3:
                    *to++ = *from++;
                    case 2:
                    *to++ = *from++;
                    case 1:
                    *to++ = *from++;
                    } while(--n > 0);
        }
    }

    return count;
}

int zeds_device(char *from, char *to, int count)
{
    {
        int n = (count + 7) / 8;

        switch(count % 8)
        {
            case 0:
again:          *to++ = *from++;
            case 7:
                *to++ = *from++;
            case 6:
                *to++ = *from++;
            case 5:
                *to++ = *from++;
            case 4:
                *to++ = *from++;
            case 3:
                *to++ = *from++;
            case 2:
                *to++ = *from++;
            case 1:
                *to++ = *from++;
            if(--n > 0)
                goto again;
        }
    }

    return count;
}

int valid_copy(char *data, int count, char expects)
{
    int i = 0;
    
    for(i = 0; i < count; i++)
    {
        if(data[i] != expects)
        {
            log_err("[%d] %c != %c", i, data[i], expects);
            return 0;
        }
    }

    return 1;
}

int main(int argc, char *argv[])
{
    char from[1000] = { 'a' };
    char to[1000] = { 'c' };
    int rc = 0;

    memset(from, 'x', 1000);
    memset(to, 'y', 1000);
    check(valid_copy(to, 1000, 'y'), "Not initialized right.");

    rc = normal_copy(from, to, 1000);
    check(rc == 1000, "Normal copy failed: %d", rc);
    check(valid_copy(to, 1000, 'x'), "Normal copy failed.");

    memset(to, 'y', 1000);

    rc = duffs_device(from, to, 1000);
    check(rc == 1000, "Duff's device failed: %d", rc);
    check(valid_copy(to, 1000, 'x'), "Duff's device failed copy.");

    memset(to, 'y', 1000);

    rc = zeds_device(from, to, 1000);
    check(rc == 1000, "Zed's device failed: %d", rc);
    check(valid_copy(to, 1000, 'x'), "Zed's device failed copy.");

    return 0;
error:
    return 1;
}
                    
