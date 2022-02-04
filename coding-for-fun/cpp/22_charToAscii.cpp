#include <iostream>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 22_charToAscii 22_charToAscii.cpp 
int main() {
 char userInput;
 std::cout << "Please enter any character:\t";
 std::cin  >> userInput;
 std::cout << userInput << " is " << int(userInput) << " in ASCII" << std::endl;
 
 return 0;
}