/**
 * \file swap.cxx
 *
 * This file is part of the course tw3720tu:
 * Object Oriented Scientific Programming with C++
 *
 */

// Include header file for standard input/output stream library
#include <iostream>

void swapByValue(int, int );
void swapByReference(int &, int &); 
void swapByAddress(int *, int *);
// The global main function that is the designated start of the program
int main(){

	std::cout << "Enter the two numbers to be swapped" << std::endl;
    // Read two integer values
    int i1; std::cin >> i1;
    int i2; std::cin >> i2;
    int temp1, temp2;
    
    temp1 = i1;
    temp2 = i2;

    swapByValue(temp1,temp2);
    temp1 = i1;
    temp2 = i2;
  
    
    swapByReference(temp1,temp2);
    temp1 = i1;
    temp2 = i2;

    swapByAddress(&temp1,&temp2);
    

    // Return code 0 to the operating system (=no error)
    return 0;
}

void swapByAddress(int *i1, int *i2)
{
	int t ;

	std::cout << "Before Swap by Address" << std::endl;
	std::cout << "i1: " << *i1 << "\ti2: " << *i2 << std::endl;
	
	t= *i1;
	*i1 = *i2;
	*i2 = t;

	std::cout << "After Swap by Address" << std::endl;
	std::cout << "i1: " << *i1 << "\ti2: " << *i2 << std::endl;
}


void swapByReference(int &i1, int &i2)
{
	int t ;

	std::cout << "Before Swap by Reference" << std::endl;
	std::cout << "i1: " << i1 << "\ti2: " << i2 << std::endl;
	
	t= i1;
	i1 = i2;
	i2 = t;

	std::cout << "After Swap by Reference" << std::endl;
	std::cout << "i1: " << i1 << "\ti2: " << i2<< std::endl;
}
void swapByValue(int i1, int i2)
{
	int t ;

	std::cout << "Before Swap by Value" << std::endl;
	std::cout << "i1: " << i1 << "\ti2: " << i2 << std::endl;
	
	t= i1;
	i1 = i2;
	i2 = t;

	std::cout << "After Swap by Value" << std::endl;
	std::cout << "i1: " << i1 << "\ti2: " << i2<< std::endl;
}


