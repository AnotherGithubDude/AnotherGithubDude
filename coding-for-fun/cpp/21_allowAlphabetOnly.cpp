#include <iostream>
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 21_pointer 21_pointer.cpp 
int alphabetOnly(std::string userInput){
    std::string resultAlphabetOnly;
    for (int currentLetter = 0; currentLetter < userInput.size(); ++currentLetter) 
        {
        if((userInput[currentLetter] >= 'A' && userInput[currentLetter] <= 'Z') 
        || (userInput[currentLetter] >= 'a' && userInput[currentLetter] <= 'z')) 
        {
            resultAlphabetOnly += userInput[currentLetter];
        }
    }
    std::cout << "Alphabet only output:\t" << resultAlphabetOnly << std::endl;
    return 0;
}

int main() {
    std::string userInput;
    std::cout << "Please enter any phrase:\t";
     getline(std::cin, userInput);
     alphabetOnly(userInput);
   return 0;
}