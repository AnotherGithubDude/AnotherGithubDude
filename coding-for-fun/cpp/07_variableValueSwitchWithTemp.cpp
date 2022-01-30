#include <iostream>
using std::cout;
using std::endl;
// author: AnotherGithubDude, 2022
int main(){
    int valueOne = 15;
    int valueTwo = 8;

    cout << "valueOne original:" << valueOne << endl;
    cout << "valueTwo original:" << valueTwo << endl;

    int temp = valueOne + valueTwo; // 15 + 8 = 23
    valueOne = temp - valueOne;     // 23 - 15 = 8
    valueTwo = temp - valueTwo;     // 23 - 8 = 15

    cout << "temp:" << temp << endl;
    cout << "valueOne after manipulation:" << valueOne << endl;
    cout << "valueTwo after manipulation:" << valueTwo << endl;
    return 0;
}