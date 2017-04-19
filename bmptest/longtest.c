#include <stdio.h>
#include <stdint.h>

int main(void)
{
    uint64_t x = UINT_LEAST64_MAX;
    //unsigned long long x = UINT_LEAST64_MAX;　//上と同じ結果
    printf("sizeof(short) = "%"PRIu64"\n" , sizeof(short));
    printf("sizeof(int) = %"PRIu64"\n" , sizeof(int));
    printf("sizeof(long) = %"PRIu64"\n" , sizeof(long));
    printf("sizeof(long long) = %"PRIu64"\n" , sizeof(long long));
    printf("sizeof(uint64_t) = %"PRIu64"\n" , sizeof(uint64_t));
    printf("x = %llu\n" , x);
    x ++;
    printf("x = %llu\n" , x);
    x ++;
    printf("x = %llu\n" , x);
    return 0;
}
