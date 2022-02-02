#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 19_ternaryOperator 19_ternaryOperator.cpp   
int guessNumber()
{
  int playerOneNumber, playerTwoNumber;
   cout << "Player One, please enter your number:\t";
   cin  >> playerOneNumber;
   cout << "Player Two, please enter your number:\t";
   cin  >> playerTwoNumber; 
   // Ternary (conditional) operator "?" (if) and ":" (else)
   // a.k.a. "Short Hand if...else" 
   // variable = (condition) ? expressionTrue : expressionFalse;
   (playerOneNumber == playerTwoNumber)? cout<<"You win\n" : cout<<"You lost\n";

    return 0;
}
 
int main()
{
    guessNumber();
    return 0;
}