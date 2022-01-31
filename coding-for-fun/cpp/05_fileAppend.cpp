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
    myFile.open("dave.txt",ios::app); //ios::app = append
    if(myFile.is_open()){
        myFile << "fourth line\n";
        myFile << "fifth line\n";
        myFile << "sixth line" << endl;
        myFile.close();
        return 0; 
    }
}