#include <iostream>
#include <cstring>
#include <string>
#include <vector>
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 13_vectorContainer 13_vectorContainer.cpp
 int main()
{
 std::vector<std::string> WebVuln {"CSRF", "LFI", "LFE", "XXE", "XSS"};
 WebVuln.push_back("RCE");
 for (int currentElement = 0;currentElement < WebVuln.size(); currentElement++){
          std::cout << WebVuln currentElement] << endl;
 }
return 0;
}