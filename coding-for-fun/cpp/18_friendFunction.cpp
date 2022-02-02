#include <iostream>
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 18_friendFunction 18_friendFunction.cpp 
class Coffee {
 private:
    int availableCoffee;
 
public:
    Coffee() { availableCoffee = 23; }
 
    // global friend function
    friend void DrinksInStock(Coffee&);
};
 
void DrinksInStock(Coffee& availableDrinks)
{
 cout<<"\n " << availableDrinks.availableCoffee << " coffees in stock."<< endl;
}
 
int main()
{
    Coffee availableCoffee;
    DrinksInStock(availableCoffee);
    return 0;
}