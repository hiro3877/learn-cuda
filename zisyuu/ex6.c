#include <stdio.h>

int main(void)
{
	int no1, no2, hantei;
	do{
		
		puts("2つの整数を入力してね");
		printf("整数1 : ");
		scanf("%d",&no1);
		printf("整数2 : ");
		scanf("%d",&no2);
	
		printf("それらの差は%dだお\n",(no1>no2) ? no1-no2 : no2-no1);
		
		printf("続けますか? (yes : 1  no : 0) : ");
		scanf("%d",&hantei);
	}
	while(hantei==1);
	
	return 0;
}
	