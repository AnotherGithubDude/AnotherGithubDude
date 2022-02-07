#include<iostream>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 26_stackPushPop 26_stackPushPop.cpp 
int main(){
    long decimalNumber;
    long temp;
    int  currentElement; 
    int  decimalPlace;
    int  i=1;
    char hexNumber[23];
         std::cout << "Please enter your decimal number:\t";
         std::cin  >> decimalNumber;
         temp      =  decimalNumber;
         while(temp!=0)
         {
          decimalPlace = temp%16;
          if(decimalPlace<10)   
           {
             decimalPlace += 48;
           }
           else
             {
              decimalPlace += 55;
             }
             hexNumber[i++] = decimalPlace;
             temp /= 16;
         }
         std::cout << "Your number in hexNumber:\t0x";
         for(currentElement = i-1; currentElement>0; --currentElement)
          {
            std::cout << hexNumber[currentElement];
          }
    return 0;
}