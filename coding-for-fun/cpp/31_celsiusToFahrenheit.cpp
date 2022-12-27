#include <iostream>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20  

float convertCelsiusToFahrenheit(float celsius) 
{
    return (celsius * 1.8) + 32;
}

int main() 
{
    std::cout << "Please enter the temperature in Celsius (23.0, 30.0):\t";
    float celsiusInput = 0;
    std::cin >> celsiusInput;

    float result = convertCelsiusToFahrenheit(celsiusInput);

    std::cout << "\nThe temperature in Fahrenheit is: " << result << "\n\n";

    return 0;
}
