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
int factorial(int n)
{
	if (n > 1)
	{
		return(n * factorial(n - 1));
	}
   	else if (n == 1)
   	{	
    	return 1;
   	}
   	else
   	{
		return 0;
	} 
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
int factorial(int n)
{
	if (n > 1)
	{
		return(n * factorial(n - 1));
	}
   	else if (n == 1)
   	{	
    	return 1;
   	}
   	else
   	{
		return 0;
	} 
}
