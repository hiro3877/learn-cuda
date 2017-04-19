#include <stdio.h>

void copy1(char *d,char *s)
{
	while(*d++=*s++)
		;
}

int main(void)
{
	char str[128]="ABC";
	char tmp[128];
	
	printf("str=%s\n",str);
	
	printf("コピーするのは : ");
	scanf("%s",tmp);
	
	copy1(str,tmp);
	
	printf("コピーしました\n");
	printf("str=%s",str);
	
	return 0;
}