#include <iostream>
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 21_pointer 21_pointer.cpp 
int main(){
    int valueOne = 23;
    std::cout << "\n&valueOne:\t" << &valueOne << std::endl; 
    
    // Reference to memory location
    int* ptrValueOne = &valueOne;       
    std::cout << "ptrValueOne:\t"  << ptrValueOne  << std::endl;

    // Pointer to memory location
    // The pointer has to be of the same type as the variable it's pointing to
    std::cout << "*ptrValueOne:\t" << *ptrValueOne << std::endl;

    // Overwriting value in memory from 23 to 42
    *ptrValueOne = 42;
    std::cout << "*ptrValueOne:\t" << *ptrValueOne << std::endl;
    
    // Value of valueOne has been overwritten in it's memory location. 23 to 42
    std::cout << "valueOne:\t"     << valueOne     << std::endl;
    return 0;
}