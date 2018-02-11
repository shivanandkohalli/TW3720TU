#include <iostream>
#include <cmath>
#include<memory>
#include<ostream>
#include<iomanip>
#include<initializer_list>
#include<exception>

using namespace std;


template<typename T>
class Vector {

private:
    T* data;
    int length;

public:
    // Default constructor
    Vector()
    : data(nullptr), length(0) {}

    // Constructor (sets length and allocates data)
    Vector(int n)
    : data(new T[n]), length(n) {}

    // Constructor (using initializer list)
    Vector(std::initializer_list<T> list)
    : Vector((int)list.size())
    {
        std::uninitialized_copy(list.begin(), list.end(), data);
    }

    // Constructor (copies elements from another vector)
    Vector(const Vector<T>& other)
    : Vector(other.length)
    {
    	for(auto i=0; i<length; i++)
    	{
    		data[i] = other.data[i];
    	}
    }

    Vector<T>& operator=(const Vector<T>& other)
    {
        if (this != &other)
            {
                delete[] data;
                length = other.length;
                data = new T[other.length];
                for (auto i=0; i<other.length; i++)
                {
                    data[i] = other.data[i];
                }
            }
        return *this;
    }

    Vector<T>& operator=(Vector<T>&& other)
    {
        if (this != &other)
            {
                delete[] data;
                length = other.length;
                data = other.data;
                other.length = 0;
                other.data = nullptr;
            }
        return *this;
    }
    
    Vector<T> operator+(const Vector<T>& other) const
    {
    	if(length != other.length)
    	{
    		throw "Vectors have different lengths";
    	}
    	else
    	{
    		Vector<T> result_vector(length);

    		for(auto i=0; i<length ; i++)
    		{
    			result_vector.data[i] = data[i] + other.data[i];
    		}

    		return result_vector;
    	}
    }

    Vector<T> operator-(const Vector<T>& other) const
    {
    	if(length != other.length)
    	{
    		throw "Vectors have different lengths";
    	}
    	else
    	{
    		Vector<T> result_vector(length);

    		for(auto i=0; i<length ; i++)
    		{
    			result_vector.data[i] = data[i] - other.data[i];
    		}
    		return result_vector;
    	}
    }

    Vector<T> operator*(T scalar) const
    {
    	Vector<decltype(scalar*data[0])> result_vector(length);

        for (auto i=0; i<length; i++)
        {
            result_vector.data[i] = data[i]*scalar;
        }

        return result_vector;
    }

    T dot(const Vector<T>& l, const Vector<T>& r) const
    {
    	if(l.length != r.length)
    	{
    		throw "Vectors have different lengths";
    	}
    	else
    	{
    		T dot_product = 0;
        	for (auto i=0; i<l.length; i++)
        	{
            	dot_product += l.data[i]*r.data[i];
        	}
        	return dot_product;
    	}   
    }

    void Print()
    {
    	for(auto i= 0; i < length; i++)
		{
			cout << data[i] << endl;
		}
	}

    // Destructor
    ~Vector()
    {
        length=0;
        delete[] data;
    }

};

int main(){

	Vector<int> a = {1, 2, 3, 4};
	Vector<int> d = {1, 2, 3, 4, 5};

	Vector<int> b(5);
	b = a;

	//b.Print();

	//Vector<int> c = a + b;

	Vector<int> c;
	try
	{
		c = a + d;
		
	}
	catch(const char* msg)
	{
		cout << msg << endl;
	}

	Vector<int> e = a - b;
	
	c.Print();

	e.Print();

	e = a*5;

    e.Print();
     
    int t = a.dot(a, b);

    cout << t << endl;



return 0;
 
}


