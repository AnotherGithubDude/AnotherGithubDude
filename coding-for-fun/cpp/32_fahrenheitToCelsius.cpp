#include <iostream>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20  

float convertFahrenheitToCelsius(float fahrenheit) 
{
    return (fahrenheit - 32) / 1.8;
}

int main() 
{
    std::cout << "Please enter the temperature in Fahrenheit (74.3, 80.0):\t";
    float fahrenheitInput = 0;
    std::cin >> fahrenheitInput;

    float result = convertFahrenheitToCelsius(fahrenheitInput);

    std::cout << "\nThe temperature in Celsius is: " << result << "\n\n";

    return 0;
}
