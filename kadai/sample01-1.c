#include <stdio.h>
#include <math.h>
#define sq(n) ((n)*(n))

int main(){

    double x0,y0,z0;
    double x[3],y[3],z[3];
    double result[3];

    int i;

    x0 = 0.0;
    y0 = 0.0;
    z0 = 0.0;

    x[0] = 1.0;
    y[0] = 0.0;
    z[0] = 0.0;

    x[1] =  1.0;
    y[1] =  1.0;
    z[1] =  0.0;

    x[2] =  1.0;
    y[2] =  1.0;
    z[2] =  1.0;

    for(i=0;i<3;i++){
       result[i] = sqrt(sq(x0-x[i])+sq(y0-y[i])+sq(z0-z[i]));
       printf("result[%d] = %lf\n",i,result[i]);
    }
    return 0;
}
