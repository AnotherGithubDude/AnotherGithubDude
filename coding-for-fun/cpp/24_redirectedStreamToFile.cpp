#include <iostream>
#include <fstream>
#include <string>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 24_redirectedStreamToFile 24_redirectedStreamToFile.cpp
int main()
{
	std::fstream MyFile;
	MyFile.open("redirectedStream.txt", std::ios::out);
    std::streambuf* bufferOut    = std::cout.rdbuf();
	std::streambuf* bufferMyFile = MyFile.rdbuf();
	std::cout.rdbuf(bufferMyFile);
	std::cout << "This line written to MyFile" << std::endl;
	std::cout.rdbuf(bufferOut);
	std::cout << "This line is written to screen" << std::endl;
	
    MyFile.close();
	
    return 0;
}