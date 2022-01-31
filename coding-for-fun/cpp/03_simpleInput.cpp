#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
int main(){
    string userName;
    cout << "\nWhat's your name?" << endl;
    getline(cin,userName);
    cout << "\nHave a nice day," << userName <<"." << endl;
    return 0;
}