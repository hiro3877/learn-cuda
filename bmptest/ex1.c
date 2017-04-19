#include <stdio.h>
#include <math.h>

int main(void)
{
	double x[3],y[3];
	double r;
	int i,j;
	
	FILE *fp;
	
	x[0]=0.0;
	y[0]=0.0;
	x[1]=1.0;
	y[1]=0.0;
	x[2]=0.0;
	y[2]=1.0;
	
	fp=fopen("data007.dat","wb");
	
	for(i=0;i<3;i++){
		for(j=i+1;j<3;j++){
			r=sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]));
			fwrite(&r,sizeof(r),1,fp);
		}
	}
	
	fclose(fp);
	return 0;
}
