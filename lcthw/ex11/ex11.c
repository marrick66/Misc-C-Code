#include <stdio.h>

int main(int argc, char *argv[])
{
  int numbers[4] = { 0 };  //In both cases, uninitialized array members are set to zero.
  char name[4] ={ 'a' };   //Is this part of the standard?

  printf("Numbers: %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3]);
  printf("Name each: %c %c %c %c\n", name[0], name[1], name[2], name[3]);
  printf("Name: %s\n", name);

  //Set up the numbers 
  numbers[0] = 1;
  numbers[1] = 2;
  numbers[2] = 3;
  numbers[3] = 4;

  //Set up the name
  name[0] = 'Z';
  name[1] = 'e';
  name[2] = 'd';
  name[3] = '\0';

  printf("Numbers %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3]);
  printf("Name each: %c %c %c %c\n", name[0], name[1], name[2], name[3]);
  printf("Name: %s\n", name);

  char *other_name = "Sean";
  
  printf("Other name each: %c %c %c %c %c\n", other_name[0], other_name[1], other_name[2], other_name[3]);
  printf("Other name: %s\n", other_name);

  return 0;
}
