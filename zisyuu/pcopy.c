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
	
	printf("�R�s�[����̂� : ");
	scanf("%s",tmp);
	
	copy1(str,tmp);
	
	printf("�R�s�[���܂���\n");
	printf("str=%s",str);
	
	return 0;
}