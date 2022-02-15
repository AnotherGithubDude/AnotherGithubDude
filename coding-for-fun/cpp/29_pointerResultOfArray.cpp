#include <iostream>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 29_pointerResultOfArray 29_pointerResultOfArray.cpp 
int main() {
   int myArray[3], currentElement, result = 0;
   int *pointerElements;
 
    for (currentElement = 0; currentElement < 3; currentElement++) {
        std::cout << "Please enter number " << currentElement+1 << ":\t";
        std::cin >> myArray[currentElement];
    }
    pointerElements = myArray;
    for (currentElement = 0; currentElement < 3; currentElement++) {
        result += *(pointerElements + currentElement);
    }
    std::cout << "\nThe result is:" << result << std::endl;
    return 0;
}