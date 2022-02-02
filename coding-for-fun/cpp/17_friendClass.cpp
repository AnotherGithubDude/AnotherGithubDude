#include <iostream>
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 17_friendClass 17_friendClass.cpp
class Coffee {
private:
    int availableCoffee;
 
public:
    Coffee() { availableCoffee = 23; }
    // friend class will be able to access private members of this class
    // but it's only one way. 
    // This class is not allowed to access the friend's private member
    friend class DrinksInStock; 
};
 
class DrinksInStock {
private:
    int availableDrinks;
 
public:
    void coffeeInventory(Coffee& coffeeInStock)
    {
      cout <<coffeeInStock.availableCoffee<<" coffees are left." << endl;
    }
};

int main()
{
    Coffee availableCoffee;
    DrinksInStock availableDrinks;
    availableDrinks.coffeeInventory(availableCoffee);
    return 0;
}