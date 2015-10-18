#include <stdio.h>

int main(int argc, char *argv[])
{
	if(argc != 2)
	{
		printf("You need to enter one argument!\n");
		return 1;
	}

	for(int i = 0; argv[1][i] != 0; i++)
	{
		char letter = argv[1][i];

		switch(letter)
		{
			case 'a':
			case 'A':
				printf("%d A\n", i);
				break;
			case 'e':
			case 'E':
				printf("%d E\n", i);
				break;
			case 'i':
			case 'I':
				printf("%d I\n", i);
				break;
			case 'o':
			case 'O':
				printf("%d O\n", i);
				break;
			case 'u':
			case 'U':
				printf("%d U\n", i);
				break;
			case 'y':
			case 'Y':
				if(i > 2)
				{
					printf("%d Sometimes Y\n", i);
					break; 	//This break only occurs when 
						//i > 2, so any Y before that index
						//will fall through to the default case.
				}
				//break; This break occurs even if i <= 2. So
				//any Y that occurs on or before index 2 will
				//be skipped.
			default:
				printf("%d %c is not a vowel.\n", i, letter);
		}
	}

	return 0;
}
