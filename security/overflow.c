#include <stdio.h>
#include <string.h>

int main()
{
	char buffer[5];
	char passwd[] = "1234\0";
	printf("jelszo: ");
	gets(buffer);
	if (strcmp(buffer, passwd))
	{
		printf("jo jelszo\n");
	}
	else
	{
		printf("nem jo\n");
	}

	return 0;
}
