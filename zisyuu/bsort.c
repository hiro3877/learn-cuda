#include <stdio.h>
#define NUMBER 5

void swap(int *px,int *py)
{
	int temp=*px
	*px=*py;
	*py=*temp;
}

void bsort(int a[],int n)
{
	int i,j;
	
	for(i=0;i<n-1;i++){
		for(j=n-1;j>i;j--){
			if(a[j-1]>a[j]){
				swap(&a[j],&a[j-1]);
			}
		}
	}
}

int main(void)
{
	int i;
	int point[NUMBER];
	
	printf("%d�l�̓_������͂��Ă�������\n");
	for(i=0;i<NUMBER;i++){
		printf("%d�� : ",i+1);
		scanf("%d",&point[i]);
	}
	
	bsort(point,NUMBER);
	
	printf("�����ɕ��בւ��܂���\n