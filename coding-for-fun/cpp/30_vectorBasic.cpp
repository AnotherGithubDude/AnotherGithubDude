#include <iostream>
#include <vector>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 30_vectorBasic 30_vectorBasic.cpp
int main() {
    std::vector<int> vectorNumbers {23, 42, 65, 88};
    vectorNumbers.push_back(130);
    vectorNumbers.pop_back();
    vectorNumbers[4] = 77;
    vectorNumbers.resize(5, 0);
    std::cout << vectorNumbers[4];
    for (int currentElement : vectorNumbers) {
     std::cout << currentElement << std::endl;
    }
    return(0);
}