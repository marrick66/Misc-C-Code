#ifndef EX22_H
#define EX22_H

//Explicitly declare the global variable viewable
//to other files. By best practices, an external global
//variable should be declared in the header of the file
//that actually defines it.  All other files should include the header
//and use the variable as normal.
extern int THE_SIZE;

//Gets and sets an internal static variable in ex22.c
int get_age();
void set_age(int age);

//Updates a static variable inside update_ratio (the function itself)
double update_ratio(double ratio);

void print_size();

#endif
