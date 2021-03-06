#include<stdio.h>
#include<math.h>
#include<cuda.h>

#define N 256

__global__ void matrix_vector_multi_gpu_1_2(float *A_d,float *B_d,float *C_d){
  int i,j;
  int N_start;

  N_start=threadIdx.x*128;

  for(j=N_start;j<N_start+128;j++){
    A_d[j]=0.0;
    for(i=0;i<N;i++){
      A_d[j]=A_d[j]+B_d[j*N+i]*C_d[i];
    }
  }
}

int main(){
  int i,j;
  float A[N],B[N*N],C[N];
  float *A_d,*B_d,*C_d;

  dim3 blocks(1,1,1);
  dim3 threads(2,1,1);

  for(j=0;j<N;j++){
    for(i=0;i<N;i++){
      B[j*N+i]=((float)j)/256.0;
    }
  }

  for(j=0;j<N;j++){
    C[j]=1.0F;
  }

  cudaMalloc((void**)&A_d,N*sizeof(float));
  cudaMalloc((void**)&B_d,N*N*sizeof(float));
  cudaMalloc((void**)&C_d,N*sizeof(float));

  cudaMemcpy(A_d,A,N*sizeof(float),cudaMemcpyHostToDevice);
  cudaMemcpy(B_d,B,N*N*sizeof(float),cudaMemcpyHostToDevice);
  cudaMemcpy(C_d,C,N*sizeof(float),cudaMemcpyHostToDevice);

  matrix_vector_multi_gpu_1_2<<<blocks,threads>>>(A_d,B_d,C_d);

  cudaMemcpy(A,A_d,N*sizeof(float),cudaMemcpyDeviceToHost);

  for(j=0;j<N;j++){
    printf("A[ %d ]=%f \n",j,A[j]);
  }

  cudaFree(A_d);
  cudaFree(B_d);
  cudaFree(C_d);


  return 0;

}
