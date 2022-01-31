#include <iostream>
using std::cout;
using std::endl;
// author: AnotherGithubDude, 2022
int main(){
    int valueOne = 15, valueTwo = 8, temp;
    cout << "valueOne original:" << valueOne << endl;
    cout << "valueTwo original:" << valueTwo << endl;

    temp     = valueOne + valueTwo; // 15 + 8  = 23
    valueOne = temp     - valueOne; // 23 - 15 = 8
    valueTwo = temp     - valueTwo; // 23 - 8  = 15

    cout << "temp:" << temp << endl;
    cout << "valueOne after manipulation:" << valueOne << endl;
    cout << "valueTwo after manipulation:" << valueTwo << endl;
    return 0;
}