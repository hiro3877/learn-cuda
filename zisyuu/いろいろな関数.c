#include <stdio.h>
#include <string.h>

int main(void)
/*
{
	char s[100];
	printf("文字を入力してください : ");
	scanf("%s",s);
	printf("長さは%d\n",strlen(s));
*/
{
	char s1[]="XCE";
	char s2[]="WDF";
	int i;
	char *ps1=s1;
	char *ps2=s2;
	i=*ps1-*ps2;
	printf("%d %d %d\n",*ps1,*ps2,i);
	return 0;
}