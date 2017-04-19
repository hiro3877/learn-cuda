#include <iostream>
#include <stdint.h>

int main(void)
{
    //unsigned long long x = UINT_LEAST64_MAX;　//上と同じ結果
    std::cout << "sizeof(short) " << sizeof(short) << std::endl;
    std::cout << "sizeof(int) " << sizeof(int) << std::endl;
    std::cout << "sizeof(long) " << sizeof(long) << std::endl;
    std::cout << "sizeof(long long) " << sizeof(long long) << std::endl;
    std::cout << "sizeof(char) " << sizeof(char) << std::endl;
    std::cout << "sizeof(float) " << sizeof(float) << std::endl;
    std::cout << "sizeof(double) " << sizeof(double) << std::endl;
    std::cout << "sizeof(uint8_t) " << sizeof(uint8_t) << std::endl;
    std::cout << "sizeof(uint16_t) " << sizeof(uint16_t) << std::endl;
    std::cout << "sizeof(uint32_t) " << sizeof(uint32_t) << std::endl;
    std::cout << "sizeof(uint64_t) " << sizeof(uint64_t) << std::endl;
    return 0;
}
