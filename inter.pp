#ifndef __FUNCS__H
#define __FUNCS__H

#include "dummy.h"

enum E_STYLE
{
	E_START,
	E_END
};

int		get_num();
int		get_max(int num1, int num2);
int		get_min(int num1, int num2);
int	    get_sum(int num1, int num2);
int 	factorial(int n);
void 	print_current_time();
void	decorate(E_STYLE style);

#endif	//__FUNCS__H
#include <iostream>

using namespace std;

#include "funcs.h"

#define MAX(a, b) (a) > (b) ? (a) : (b)
#define SUM(a, b) (a) + (b)

int get_num()
{
	int num;
   	cout << "Please enter a positive number: ";
	cin >> num;
   
   	return num;
}

int get_max(int num1, int num2)
{
	return MAX(num1, num2);
}

int	get_min(int num1, int num2)
{
	return -(MAX(num1, num2) - num1 - num2);
}

int	get_sum(int num1, int num2)
{
	return SUM(num1, num2);
}

void decorate(E_STYLE style)
{
	switch (style)
	{
		case E_START:
		{
			cout << "===========   WELCOME   ===========" << endl;
			break;
		}
		case E_END:
		{
			cout << "===========   GOODBYE   ===========" << endl;
			break;
		}
	}
}