#include <iostream>
#include <fstream>
using std::cin;
using std::cout;
using std::endl;
using std::fstream;
using std::ios;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
int main(){
   fstream myFile;
    myFile.open("dave.txt",ios::in); //ios::in = read
    if(myFile.is_open()){
        string currentLine;
        while (getline(myFile, currentLine)){
            cout << currentLine << endl;
        }
        myFile.close();
        return 0; 
    }
}