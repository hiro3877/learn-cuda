#include <stdio.h>

int main(void)
{
	int no;
	
	printf("整数入力よろ : ");
	scanf("%d",&no);
	
	if(no%5!=0)
	{
		puts("5で割り切れないよ");
	}
	else
	{
		puts("割り切れるよ^^");
	}
	return 0;
}