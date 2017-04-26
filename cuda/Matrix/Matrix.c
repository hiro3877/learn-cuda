#include<stdio.h>
#include<math.h>

#define N 256

void matrix_vecter_multi_cpu(float *A,float *B,float *C){
  int i,j;

  for(j=0;j<N;j++){
    A[j]=0.0F;
    for(i=0;i<N;i++){
      A[j]=A[j]+B[j*N+i]*C[i];
    }
  }
}

int main(){
  int i,j;
  float A[N],B[N*N],C[N];

  for(j=0;j<N;j++){
    for(i=0;i<N;i++){
      B[j*N+i]=((float)j)/256.0;
    }
  }

  for(j=0;j<N;j++){
    C[j]=1.0F;
  }

  matrix_vecter_multi_cpu(A,B,C);

  for(j=0;j<N;j++){
    printf("A[ %d ]=%f \n",j,A[j]);
  }

  return 0;

}
