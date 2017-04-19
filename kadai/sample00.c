#include <stdio.h>
#include <math.h>
#define sq(n) ((n)*(n))

int main(){

    double x0,y0,z0;
    double x1,y1,z1;
    double r;
	
	printf("x0 : ");	scanf("%lf",&x0);
	printf("y0 : ");	scanf("%lf",&y0);
	printf("z0 : ");	scanf("%lf",&z0);
	
	printf("x1 : ");	scanf("%lf",&x1);
	printf("y1 : ");	scanf("%lf",&y1);
	printf("z1 : ");	scanf("%lf",&z1);

    r = sqrt(sq(x0-x1)+sq(y0-y1)+sq(z0-z1));

    printf("r = %lf\n",r);
    return 0;
}
