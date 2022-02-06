#include <iostream>
#include <stack>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 26_stackPushPop 26_stackPushPop.cpp 
int main()
{
    std::stack<float> MyStack;
    MyStack.push(23.42);
    MyStack.push(42.23);
    MyStack.push(77.44);
    while (!MyStack.empty()) {
        std::cout << MyStack.top() << std::endl;
        MyStack.pop();
    }
	return 0;
}