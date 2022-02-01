#include <iostream>
#include <map>
#include <string>
using std::cout;
using std::endl;
using std::map;
using std::pair;
using std::string;
// author: https://github.com/AnotherGithubDude, 2022
// $ g++ -std=c++20 -o 15_mapDataCollection 15_mapDataCollection.cpp
 int main()
{
   map<string, string> VulnerabilitiesRemediation;
    // VulnerabilitiesRemediation.clear();
    VulnerabilitiesRemediation.insert(pair<string, string>("0 Vuln\t"," Remediation"));
    VulnerabilitiesRemediation.insert(pair<string, string>("1 XSS \t"," output encoding"));
    VulnerabilitiesRemediation.insert(pair<string, string>("2 CSRF\t"," nonce"));
    VulnerabilitiesRemediation.insert(pair<string, string>("3 SQLi\t"," prepared Statement"));
    // cout << VulnerabilitiesRemediation.size() << endl;
    for (auto pair : VulnerabilitiesRemediation){
        cout << pair.first << "->" << pair.second << endl;
    }
   return 0;
}