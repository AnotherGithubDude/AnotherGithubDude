#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
void getUserId(string userName, int userId=2342){
    cout << "The user's name is:\t" << userName << endl;
    cout << "The user's id is:\t" << userId << endl;
}

int main(){
    string userName;
    cout << "Please enter your Name:\t";
    getline(cin,userName);
    getUserId(userName);
//  introduceTheUser("Dave",007);
    return 0; 
}
