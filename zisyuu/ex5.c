#include <stdio.h>

int main(void)
{
	int no;
	
	printf("®”“ü—Í‚æ‚ë : ");
	scanf("%d",&no);
	
	if(no%5!=0)
	{
		puts("5‚ÅŠ„‚èØ‚ê‚È‚¢‚æ");
	}
	else
	{
		puts("Š„‚èØ‚ê‚é‚æ^^");
	}
	return 0;
}