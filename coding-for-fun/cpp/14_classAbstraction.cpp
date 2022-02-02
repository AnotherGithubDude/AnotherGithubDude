#include <iostream>
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 14_classAbstraction 14_classAbstraction.cpp
class Coffein {
public:
    virtual void getColdDrink()       = 0;
    virtual void getHotDrink()        = 0;
};

class Coffee:public Coffein {
public:
    void getColdDrink(){
        cout << "Your cold coffee will be served in a moment." << endl;
    }
     void getHotDrink(){
        cout << "Your hot coffee will be served in a moment." << endl;
    }
};

class EnergyDrink:public Coffein {
public:
     void getColdDrink(){
        cout << "Your cold EnergyDrink will be served in a moment." << endl;
    }
    void getHotDrink(){
        cout << "Your Tea (Energy drink) will be served in a moment." << endl;
    }
};

 int main()
{
   Coffein* DrinkOne = new Coffee();
   Coffein* DrinkTwo = new EnergyDrink();
   DrinkOne->getHotDrink();
   DrinkTwo->getColdDrink();
   return 0;
}