#include <stdio.h>
#include <math.h>

int main(void)
{
	float a;
	FILE *fp1,*fp2;
	
	a=1.000;
	
	fp1=fopen("write.txt","wt");
	fp2=fopen("write.bin","wb");
	
	fprintf(fp1,"%f",a);
	fwrite(&a,sizeof(float),1,fp2);
	
	fclose(fp1);
	fclose(fp2);
	return 0;
}
	
	
