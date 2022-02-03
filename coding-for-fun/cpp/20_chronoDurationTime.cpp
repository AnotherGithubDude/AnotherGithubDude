#include <iostream>
#include <chrono>
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 20_chronoTimeDuration 20_chronoTimeDuration.cpp 
long basicCalculation(long valueOne, long valueTwo)
{
    return(valueOne*valueTwo);
}
int main()
{
    auto startTimer = std::chrono::steady_clock::now();
    std::cout << "The result is:\t" << basicCalculation(23,42) << std::endl;
    auto endTimer = std::chrono::steady_clock::now();
    std::chrono::duration<double> elapsedDuration = endTimer-startTimer;
    std::cout << "it took " << elapsedDuration.count() << "sec." << std::endl;

    return 0;
}