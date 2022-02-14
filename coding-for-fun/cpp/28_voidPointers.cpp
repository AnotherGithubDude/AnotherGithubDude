#include <iostream>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 28_voidPointers 28_voidPointers.cpp 
void returnNumber(int* myIntegerPointer){
    std::cout << "integer:\t" << *myIntegerPointer << std::endl;
}
void returnLetter(char* myCharPointer){
    std::cout << "char:\t\t"  << *myCharPointer    << std::endl;
}

void printMyPointerType(void* ptr,char type){
    switch (type){
        case 'c':
            std::cout << "char:\t\t"    << *((char*)ptr) << std::endl; break;
        case 'i':
            std::cout << "integer:\t"   << *((int*)ptr)  << std::endl; break;
    }
}
int main(){
    int  number = 23;
    char letter = 'D';
    returnNumber(&number);
    returnLetter(&letter);
    printMyPointerType(&number,'i');
    printMyPointerType(&letter,'c');
    return 0;
}