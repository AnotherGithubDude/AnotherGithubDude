#include <iostream>
#include <chrono>
 
long basicCalculation(unsigned valueOne, unsigned valueTwo)
{
    return(valueOne*valueTwo);
}
 
int main()
{
    auto start = std::chrono::steady_clock::now();
    std::cout << "The result is:\t" << basicCalculation(23,42) << '\n';
    auto end = std::chrono::steady_clock::now();
    std::chrono::duration<double> elapsed_seconds = end-start;
    std::cout << "elapsed time: " << elapsed_seconds.count() << "s\n";
}