#include <stdio.h>

int main(void)
{
	int no;
	
	printf("�������͂�� : ");
	scanf("%d",&no);
	
	if(no%5!=0)
	{
		puts("5�Ŋ���؂�Ȃ���");
	}
	else
	{
		puts("����؂���^^");
	}
	return 0;
}