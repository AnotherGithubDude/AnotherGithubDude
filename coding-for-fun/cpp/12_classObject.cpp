#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
class userProfile {
public:
    string userName;
    string userRealName;
    int    userId;
};

int getUserProfile() {
    userProfile userProfile;            // access the class
    userProfile.userName = "ZeroCool";  // hardcoded fake data
    userProfile.userRealName = "Dave";
    userProfile.userId = 007; 

    cout << "\nuserName: " << userProfile.userName << endl;
    cout << "\nuserRealName: " << userProfile.userRealName << endl;
    cout << "\nuserId: " << userProfile.userId << endl;

    return 0; 
}

int setUserProfile(string userName, string userRealName) {
    userProfile userProfile;
    userProfile.userName = userName;
    userProfile.userRealName = userRealName;
    userProfile.userId = 2342; 

    cout << "\nuserName: " << userProfile.userName << endl;
    cout << "\nuserRealName: " << userProfile.userRealName << endl;
    cout << "\nuserId: " << userProfile.userId << endl;
   
    return 0; 
}

int main(){
    string userInput;
    cout << "Please enter the secret sauce:\t";
    getline(cin,userInput);
    if(userInput == "hackers"){
        string userName;
        string userRealName;
        cout << "Please enter your beloved username:\t";
        getline(cin,userName);
        cout << "Please enter your Matrix name:\t";
        getline(cin,userRealName);

        setUserProfile(userName, userRealName);
    } else {
        getUserProfile(); // output hardcoded fake data
    }
    return 0; 
}
