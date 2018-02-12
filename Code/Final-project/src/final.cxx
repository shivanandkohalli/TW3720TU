#include <iostream>
#include <cmath>
#include<memory>
#include<ostream>
#include<iomanip>
#include<initializer_list>
#include<exception>
#include <map>
#include <vector>

using namespace std;


template<typename T>
class Vector {

private:
    T* data;
    int length;

public:

	int getLength()
	{
		return length;
	}

	T getData(int i)
	{
		return(data[i]);
	}

	void setData(T val, int i)
	{
		if(i >= length)
		{
			throw ("Vector dimension 'i' out of bound");
		}
		data[i] = val;
	}
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

    // Vector<int> tempFunction()
    // {
    // 	Vector<int> a;
    // 	return a;	
    // }
    Vector<T> operator*(T scalar) const //->decltype(tempFunction())
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

template<typename T>
class Matrix
{
public:
	Matrix()
	{
		this->rows = 0;
		this->columns = 0;
	}

	Matrix(int m, int n)
	{
		this->rows = m;
		this->columns = n;
	}

	~Matrix()
	{

	}

	void AddElement(array<int,2> row_col, T value)
	{
		if(row_col[0] > this->rows || row_col[1] > this->columns)
		{
    		throw "Sparse Matrix dimension out of bound";
		}

		// Insert the element into the map if row and column is within the bounds
		sparseMap.insert(pair<array<int,2>, T> (row_col, value));
	}

	Vector<T> Matvec (Vector<T> &vec) const
	{
		// Check if multiplication is possible
		if(vec.getLength() != this->columns)
		{
			throw "Dimensions not compatible for matrix-vector multiplication";
		}
		// Iterate over all the key pairs and do the matrix-vector multiplication
		//vector<array<int,2>> v;

		// The resultant vector will have the size of row of the matrix
		Vector<T> result_vector(this->rows); // TODO: Check how to determine its return type
		
		Vector<T> temp_vector(this->columns);

		for(auto i=0; i<this->rows; i++)
		{
			for(auto j=0; j<this->columns; j++)
			{
				array <int, 2> r_c = {i,j};
				if(sparseMap.find(r_c) != sparseMap.end())
				{
					temp_vector.setData(sparseMap.find(r_c)->second,j);
				}
				else
				{
					temp_vector.setData(0,j);
				}
			}
			// cout << "temp_vector" << endl;
			// temp_vector.Print();
			// cout << "temp_vector" << endl;
			auto dotResult = temp_vector.dot(temp_vector, vec);
			result_vector.setData(dotResult,i);
		}
		cout << "\r\n";
		// for(typename map<array<int,2>,T>::iterator it = sparseMap.begin(); it != sparseMap.end(); ++it) 
		// {
		// 	v.push_back(it->first);


		// }

		return result_vector;

	}

private:
	int rows, columns;

	map <array<int,2>, T> sparseMap;
	
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

	e = a*5.7456;

    e.Print();
     
    int t = a.dot(a, b);

    cout << t << endl;

    Matrix<int> m(4,4);

    m.AddElement({0,0}, 1);
	m.AddElement({1,1}, 10);
	m.AddElement({2,2}, 100);
	m.AddElement({3,3}, 1000);

	Vector<int> testVec = {1,2,3,4};
	testVec = m.Matvec(testVec);

	testVec.Print();


return 0;
 
}


