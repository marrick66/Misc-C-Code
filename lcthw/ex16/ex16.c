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

struct Person *PersonCreate(char *name, int age, int height, int weight)
{
	struct Person *who = malloc(sizeof(struct Person)); //dynamically allocate memory from the heap. It returns a void pointer, which
														//can be assigned to any pointer type without being cast.
	assert(who != NULL);

	who->name = strdup(name);
	who->age = age;
	who->height = height;
	who->weight = weight;

	return who;
}

void PersonDestroy(struct Person *who)
{
	assert(who != NULL);

	free(who->name);
	free(who);
}

void PersonPrint(struct Person *who)
{
	printf("Name: %s\n", who->name);
	printf("\tAge: %d\n", who->age);
	printf("\tHeight: %d\n", who->height);
	printf("\tWeight: %d\n", who->weight);

}

int main(int argc, char *argv[])
{

	struct Person *joe = PersonCreate("Joe Alex", 32, 64, 140);
	struct Person *frank = PersonCreate("Frank Black", 20, 72, 180);

	printf("Joe is at address %p\n", joe);
	PersonPrint(joe);

	printf("Frank is at address %p\n", frank);
	PersonPrint(frank);

	joe->age += 20;
	joe->height -= 2;	
	joe->weight += 40;

	PersonPrint(joe);

	frank->age += 20;
	frank->weight += 20;

	PersonPrint(frank);

	PersonDestroy(joe);
	PersonDestroy(frank);

	return 0;
}
