#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
int checkUserCredentials(string userName, string userSecret){
    bool validCredentials = false;
    if(userName == "ZeroCool" && userSecret == "hacktheplanet23"){
      validCredentials = true;
      return validCredentials;
    }
    return 0;
}

int getCredentialsFromUser(){
    string userName;
    string userSecret;
    cout << "\nPlease enter your username:\t";
    cin  >> userName;
    cout << "Please enter your secret:\t";
    cin  >> userSecret;
    int checkStatus = checkUserCredentials(userName, userSecret);  // if the return value is true, login has been successful
    if (checkStatus == true){
        cout << "Welcome back, " << userName << endl;
    } else {
        cout << "Have a nice day. Bye." << endl;
    }
    return 0;
}

int main(){
    getCredentialsFromUser();
    return 0;
}