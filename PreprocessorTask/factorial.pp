#ifndef __FUNCS__H



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
