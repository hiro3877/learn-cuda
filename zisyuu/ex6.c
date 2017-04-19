#include <stdio.h>

int main(void)
{
	int no1, no2, hantei;
	do{
		
		puts("2‚Â‚Ì®”‚ð“ü—Í‚µ‚Ä‚Ë");
		printf("®”1 : ");
		scanf("%d",&no1);
		printf("®”2 : ");
		scanf("%d",&no2);
	
		printf("‚»‚ê‚ç‚Ì·‚Í%d‚¾‚¨\n",(no1>no2) ? no1-no2 : no2-no1);
		
		printf("‘±‚¯‚Ü‚·‚©? (yes : 1  no : 0) : ");
		scanf("%d",&hantei);
	}
	while(hantei==1);
	
	return 0;
}
	