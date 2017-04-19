#include <stdio.h>

void swap(int *px,int *py)
{
	int temp=*px;
	*px=*py;
	*py=temp;
}

void sort2(int *n1,int *n2)
{
	if(*n1>*n2)
	{
		swap(n1,n2);
	}
}
	
int main(void)
{
	int na,nb;
	
	puts("2‚Â‚Ì®”‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢");
	printf("®”A : "); scanf("%d",&na);
	printf("®”B : "); scanf("%d",&nb);
	
	sort2(&na,&nb);
	
	printf("¸‡‚É‚µ‚Ü‚µ‚½D\n");
	printf("®”A‚Í%d‚Å‚·\n",na);
	printf("®”B‚Í%d‚Å‚·\n",nb);
	
	return 0;
}