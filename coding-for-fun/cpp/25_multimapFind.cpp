#include <iostream>
#include <map>
// license: cc0, author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 25_multimapFind 25_multimapFind.cpp 
int main()
{
	std::multimap<int, int> IdValueMultiMap;
    IdValueMultiMap.insert({ 1, 23 });
	IdValueMultiMap.insert({ 4, 46 });
	IdValueMultiMap.insert({ 3, 69 });
	IdValueMultiMap.insert({ 2, 82 });
	std::cout << "ID\tVALUE\n";
	for (auto currentElement  = IdValueMultiMap.find(1); 
              currentElement != IdValueMultiMap.end(); 
              currentElement++)
		{
            std::cout << currentElement->first 
            << '\t' << currentElement->second << std::endl;
        }
	return 0;
}
