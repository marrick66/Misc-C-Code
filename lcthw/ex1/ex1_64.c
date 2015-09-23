//Since exercise 1 calls a 32 bit library, it still
//has to use the 32 bit cdecl calling convention. By
//creating our own function that is 64 bit only, we 
//should see the x64 calling convention.

int add(int value1, int value2)
{
	return value1 + value2;
}

int main(int argc, char *argv[])
{
	int value1 = 1;
	int value2 = 3;
	return add(value1, value2);
}


