#include <iostream>
using std::cout;
using std::endl;
// author: AnotherGithubDude, 2022
int main(){
    int valueOne = 15, valueTwo = 8;

    cout << "valueOne original:" << valueOne << endl;
    cout << "valueTwo original:" << valueTwo << endl;

    valueOne += valueTwo;             // 15 + 8  = 23
    valueTwo  = valueOne - valueTwo;  // 23 - 8  = 15
    valueOne -= valueTwo;             // 23 - 15 = 8

    cout << "valueOne after manipulation:" << valueOne << endl;
    cout << "valueTwo after manipulation:" << valueTwo << endl;
    return 0;
}