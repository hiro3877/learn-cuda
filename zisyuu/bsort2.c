#include <stdio.h>
#define NUMBER 5

void swap(int *px,int *py)
{
	int temp=*px;
	*px=*py;
	*py=temp;
}

void bsort(int a[],int n)
{
	int i,j;
	
	for(i=0;i<n-1;i++){
		for(j=0;j<n-1-i;j++){
			if(a[j+1]<a[j]){
				swap(&a[j],&a[j+1]);
			}
		}
	}
}

int main(void)
{
	int i;
	int point[NUMBER];
	
	printf("%dl‚Ì“_”‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢\n",NUMBER);
	for(i=0;i<NUMBER;i++){
		printf("%d”Ô : ",i+1);
		scanf("%d",&point[i]);
	}
	
	bsort(point,NUMBER);
	
	printf("¸‡‚É•À‚×‘Ö‚¦‚Ü‚µ‚½\n");
	for(i=0;i<NUMBER;i++){
		printf("%2d”Ô : %d\n",i+1,point[i]);
	}
	return 0;
}