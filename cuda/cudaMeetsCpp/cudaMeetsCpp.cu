#include <iostream>
#include <cstdio>

__global__ void helloFromGPU()
{
	printf("Hello World from GPU!\n");
}

int main(void)
{
	printf("Hello World from CPU!\n");
	std::cout << "hello c++" << std::endl;
	helloFromGPU <<<1, 10>>>();
	cudaDeviceReset();
	return 0;
}

