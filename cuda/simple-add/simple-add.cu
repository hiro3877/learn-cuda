#include <stdio.h>
#include<cuda.h>

__global__ void add (int a, int b, int *c) {
   *c = a+ b;
}

int main( void) {
   int c;
   int *dev_c;

   cudaMalloc( (void**)&dev_c, sizeof(int) );

   add<<<1,1>>>( 12, 2000, dev_c);

   cudaMemcpy( &c, dev_c, sizeof(int), cudaMemcpyDeviceToHost);

   cudaFree( dev_c);

   printf( "12 + 2000 = %d\n", c);

   return 0;
}
