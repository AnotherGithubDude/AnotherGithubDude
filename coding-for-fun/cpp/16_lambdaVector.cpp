#include <algorithm>
#include <iostream>
#include <vector>
using std::cout;
using std::endl;
using std::string;
using std::vector;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 16_lambdaVector 16_lambdaVector.cpp
 int main()
{  
   string injectString = " injection\n"; 
   // lambda syntax: [cc](p){fd} // 
   // cc = capture clause, p = params, fd = function definition
   vector <string> WebVulnerabilities{"CODE ","LDAP ","SQL  ","XPATH"};
   for_each(WebVulnerabilities.begin(),WebVulnerabilities.end(),
   [injectString](string currentElement){cout << currentElement<<injectString;});
   return 0;
}