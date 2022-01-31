#include <iostream>
#include <string>
#include <vector>
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 13_vectorContainer 13_vectorContainer.cpp
 int main()
{
    std::vector<std::string> WebAttackVectors {"CSRF", "LFI", "LFE", "RFI", "SQLI", "XXE", "XSS"};
    WebAttackVectors.push_back("RCE");
    for (int currentElement = 0; currentElement < WebAttackVectors.size(); currentElement++){
             std::cout << WebAttackVectors[currentElement] << endl;
        }
    return 0;
}