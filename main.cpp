#include <iostream>

int simpleFunction();

struct Test
{
	int* data = nullptr;
	void setValue(int v)
	{
		if (!data)
			data = new int();
		*data = v;
	}
};

Test& getTest()
{
	static thread_local Test test;
	return test;
}

int main(int, char**)
{
	std::cout << "start main\n";
	// The program crashes here
	getTest().setValue(15);
	std::cout << "end main - " << simpleFunction() << "\n";
	return 0;
}
