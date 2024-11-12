#include <map>
#include <iostream>

int simpleFunction();

std::map<std::string, std::string>& getMap()
{
	static thread_local std::map<std::string, std::string> sMap;	// If you remove the thread_local specifier, the program will not crash
	return sMap;
}

int main()
{
	std::cout << "start main\n";
	getMap()["test"] = "";			// The program crashes here
	std::cout << "should crash in the line before\n";
	std::cout << "end main - " << simpleFunction() << "\n";
	return 0;
}
