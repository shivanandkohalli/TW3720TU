/**
 * \file arrays.cxx
 *
 * This file is part of the course tw3720tu:
 * Object Oriented Scientific Programming with C++
 *
 */

// Include header file for standard input/output stream library
#include <iostream>
using namespace std;

// If the input size is greater than this number, then it is considered as a very big input
#define BIG_INPUT 1000

void add_array(int *a, int *b, int *c, int min_size);

// The global main function that is the designated start of the program
int main(){

    // Start here...
    int n1, n2;
    int *array1, *array2;
    int *sum_array;
    int i;
    int min_size;

    cout << "Enter the size of the two arrays" << endl;
    
    cin >> n1 >> n2;
    
    array1 = new int[n1];
    array2 = new int[n2];
    
    // Handle the condition if input is too big
    
    if(n1 > BIG_INPUT || n2 > BIG_INPUT)
    {
        cout << "Input is too big, exiting" << endl;
        return 0;
    }

    
    cout << "Enter the values of first array " << endl;
    
    for(i=0;i<n1;i++)
    {
        cin >> array1[i];
    }
    
    cout << "Enter the values of second array " << endl;
    
    for(i=0;i<n2;i++)
    {
        cin >> array2[i];
    }

    cout << "The first array is of size" << n1 << " Its elements are :" << endl;

    for(i=0;i<n1;i++)
    {
        cout << array1[i] << " ";
    }

    cout << endl;

    cout << "The second array is of size" << n2 << " Its elements are :" << endl;

    for(i=0;i<n2;i++)
    {
        cout << array2[i] << " ";
    }

    cout << endl;
    
    // Find the smallest size, n1 or n2

    if(n1 < n2)
    {
        min_size = n1;
    }
    else
    {
        min_size = n2;
    }

    // Allocate the new memory for the new array.
    sum_array = new int[min_size];
    add_array(array1,array2,sum_array,min_size);

    cout << "The added array is of size " << min_size << " and its elements are" << endl;

    for(i=0;i<min_size;i++)
    {
    	cout << sum_array[i] << " ";
    }

    cout << endl;

    // Deallocate all the memory that is allocated before termination

    delete[] array1;
    delete[] array2;
    delete[] sum_array;

    // Return code 0 to the operating system (=no error)
    return 0;
}

// The first two pointers are input array, the third (*c) is the sum array 
void add_array(int *a, int *b, int *c, int min_size)
{
    
    //int *c = new int[min_size];
    
    for(int i=0;i<min_size;i++)
    {
        c[i] = a[i] + b[i];
    }
    
}
