#include <stdio.h>
#define NUMBER 5

int max_of(int v[])
{
	int i;
	int max=v[0];
	
	for(i=1;i<NUMBER;i++){
		if(v[i]>max){
			max=v[i];
		}
	}
	return max;
}

int sum1(int t[])
{
	int i,ave,sum;
	sum=0;
	ave=0;
	
	for(i=0;i<NUMBER;i++){
		sum+=t[i];
	}
	
	/*ave=(double)sum/NUMBER;*/
	return sum;
}

int main(void)
{
	int i,eng[NUMBER],mat[NUMBER],max_e,max_m,sum_e,sum_m;
	double ave_e,ave_m;
	
	printf("%d�l�̓_������͂��Ă��������B\n",NUMBER);
	for(i=0;i<NUMBER;i++){
		printf("[%d] �p�� : ",i+1); scanf("%d",&eng[i]);
		printf("���w : "); scanf("%d",&mat[i]);
	}
	
	max_e=max_of(eng);
	max_m=max_of(mat);
	
	sum_e=sum1(eng);
	sum_m=sum1(mat);
	
	ave_e=(double)sum_e/NUMBER;
	ave_m=(double)sum_m/NUMBER;
	
	printf("�p��̍ō��_=%d\n",max_e);
	printf("���w�̍ō��_=%d\n",max_m);
	
	printf("�p��̍��v�_=%d\n",sum_e);
	printf("���w�̍��v�_=%d\n",sum_m);
	
	printf("�p��̕��ϓ_=%5.1f\n",ave_e);
	printf("���w�̕��ϓ_=%5.1f\n",ave_m);
	return 0;
}