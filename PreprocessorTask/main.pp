#ifndef __FUNCS__H
#define __FUNCS__H


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
#pragma once

#define KUKU "Amitai"
#define COOKIE "Ola"
#define FOO "Margalit"
#define LULU "Michal"
using namespace std;


int main()
{
	PROGRAM_START

	int num1 = get_num();
	int num2 = get_num();
	int max = get_max(num1, num2);
	int min = get_min(num1, num2);
   
	cout << "The max is " << max << endl;
	cout << "The min is " << min << endl;

	cout << "The factorial of " << num1 << " + " << num2 << "is" << factorial(get_sum(num1, num2)) << endl;
	print_current_time();
   	
   	PROGRAM_END
   	
   	return 0;
}
#ifndef __FUNCS__H
#define __FUNCS__H


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
#pragma once

#define "Amitai" "Amitai"
#define "Ola" "Ola"
#define "Margalit" "Margalit"
#define "Michal" "Michal"
using namespace std;


int main()
{
	PROGRAM_START

	int num1 = get_num();
	int num2 = get_num();
	int max = get_max(num1, num2);
	int min = get_min(num1, num2);
   
	cout << "The max is " << max << endl;
	cout << "The min is " << min << endl;

	cout << "The factorial of " << num1 << " + " << num2 << "is" << factorial(get_sum(num1, num2)) << endl;
	print_current_time();
   	
   	PROGRAM_END
   	
   	return 0;
}
