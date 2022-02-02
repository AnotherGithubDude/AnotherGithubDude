#include <iostream>
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 17_friendClass 17_friendClass.cpp
class Coffee {
private:
    int howManyCoffeeAvailable;
 
public:
    Coffee() { howManyCoffeeAvailable = 23; }
    friend class DrinksInStock; // friend class will be able to access private
};
 
class DrinksInStock {
private:
    int howManyDrinksAvailable;
 
public:
    void showCoffee(Coffee& coffeeInStock)
    {
      cout <<coffeeInStock.howManyCoffeeAvailable<<" coffees are left." << endl;
    }
};

int main()
{
    Coffee howManyCoffeeAvailable;
    DrinksInStock howManyDrinksAvailable;
    howManyDrinksAvailable.showCoffee(howManyCoffeeAvailable);
    return 0;
}