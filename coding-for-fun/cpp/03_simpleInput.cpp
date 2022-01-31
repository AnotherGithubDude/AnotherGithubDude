#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
int main(){
    string username;
    cout << "\nWhat's your name?" << endl;
    getline(cin,username);
    cout << "\nHave a nice day," << username <<"." << endl;
    return 0;
}