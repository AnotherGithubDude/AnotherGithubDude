#include <iostream>
#include <iterator>
#include <regex>
#include <string>
using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::regex;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
int checkRegex(string userInput){
    string hardcodedString = "Some text which is treated as "
                            "a placefolder and has been concatinated with following userInput: ";

    string regexPattern = "([a-z])";
    regex  regexRule(regexPattern);
    bool   isValidRegex = regex_search(userInput, regexRule); // will be treated as "contains" at least one letter
    if(isValidRegex){
        cout << "The regex has matched."     << endl;
        cout << hardcodedString << userInput << endl;
    } else {
        cout << "Please try again."          << endl;
    } 
    return 0;
}
int main(){
    string userInput;
    cout << "Please enter any text:\t";
    getline(cin,userInput);
    checkRegex(userInput);
    return 0;
}