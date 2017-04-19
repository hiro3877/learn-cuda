#include <stdio.h>
#include <string.h>

int main(void)
/*
{
	char s[100];
	printf("•¶Žš‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢ : ");
	scanf("%s",s);
	printf("’·‚³‚Í%d\n",strlen(s));
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