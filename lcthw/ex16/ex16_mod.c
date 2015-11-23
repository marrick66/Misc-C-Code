#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

struct Person
{
	char *name;
	int age;
	int height;
	int weight;
};
	
void PersonPrint(struct Person *who)
{
	printf("Name: %s\n", who->name);
	printf("\tAge: %d\n", who->age);
	printf("\tHeight: %d\n", who->height);
	printf("\tWeight: %d\n", who->weight);

}

int main(int argc, char *argv[])
{
	
	//We will create these structs on main's stack frame, instead of the heap:
	struct Person joe = { .name = "Joe Alex", .age = 32, .height = 64, .weight = 140 };
	struct Person frank = { .name = "Frank Black", .age = 20, .height = 72, .weight = 180 };

	printf("Joe is at address %p\n", &joe);
	PersonPrint(&joe);

	printf("Frank is at address %p\n", &frank);
	PersonPrint(&frank);

	joe.age += 20;
	joe.height -= 2;	
	joe.weight += 40;

	PersonPrint(&joe);

	frank.age += 20;
	frank.weight += 20;

	PersonPrint(&frank);

	return 0;
}
