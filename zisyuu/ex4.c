#include <stdio.h>

int main(void)
{
	printf("[%d]\n",123);
	printf("[%.4d]\n",123);
	printf("[%4d]\n",123);
	printf("[%04d]\n",123);
	printf("[%-4d]\n",123);
	
	printf("[%f]\n",123.13);
	printf("[%.1f]\n",123.13);
	printf("[%6.1f]\n",123.13);
	
	return 0;
}
