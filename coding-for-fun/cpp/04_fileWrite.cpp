#include <iostream>
#include <fstream>
using std::cin;
using std::cout;
using std::endl;
using std::fstream;
using std::ios;
// author: https://github.com/AnotherGithubDude, 2022
int main(){
    fstream myFile;
    myFile.open("dave.txt",ios::out); //ios::out = (over)write
    if(myFile.is_open()){
        myFile << "first line\n";
        myFile << "second line\n";
        myFile << "third line" << endl;
        myFile.close();
        return 0; 
    }
}