#include <iostream>
#include <cmath>
#include<memory>
#include<ostream>
#include<iomanip>
#include<initializer_list>
#include<exception>
#include <map>
#include <vector>
#include <fstream>

using namespace std;


template<typename T>
class Vector {

private:
    T* data;
    int length;

public:


	int getLength() const
	{
		return length;
	}

	T getData(int i) const
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
    : data(new T[n]()), length(n) {}

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

    
    template <typename S>
    Vector<typename std::common_type<S,T>::type> operator*(S scalar) const 
    {
    	using V = typename std::common_type<S,T>::type;
    	
    	Vector<V> result_vector(length);

        for (auto i=0; i<length; i++)
        {
            result_vector.setData(data[i]*scalar,i);
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

    void Print(ofstream &out_file) const
    {
    	for(auto i= 0; i < length; i++)
		{
			out_file << data[i] << endl;
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

	void AddElement(const array<int,2> row_col, const T value)
	{
		if(row_col[0] > this->rows || row_col[1] > this->columns)
		{
    		throw "Sparse Matrix dimension out of bound";
		}

		// Insert the element into the map if row and column is within the bounds
		sparseMap.insert(pair<array<int,2>, T> (row_col, value));
	}

    template <typename S>
	Vector<typename std::common_type<S,T>::type> Matvec (Vector<S> &vec) const
	{
		using V = typename std::common_type<S,T>::type;

		// Check if multiplication is possible
		if(vec.getLength() != this->columns)
		{
			throw "Dimensions not compatible for matrix-vector multiplication";
		}
		// Iterate over all the key pairs and do the matrix-vector multiplication
		//vector<array<int,2>> v;

		// The resultant vector will have the size of row of the matrix
		Vector<V> result_vector(this->rows);
		
		Vector<V> temp_vector(this->columns);

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
			auto dotResult = temp_vector.dot(temp_vector, vec);
			result_vector.setData(dotResult,i);
		}
		return result_vector;

	}


	void printMatrix() const
	{
		for(auto i=0;i<this->rows;i++)
		{
			for(auto j=0;j<this->columns;j++)
			{
				array <int, 2> r_c = {i,j};
				if(sparseMap.find(r_c) != sparseMap.end())
				{
					cout << sparseMap.find(r_c)->second << "\t";
				}
				else
				{
					cout << 0 << "\t";
				}
			}
			cout << "\n";
		}
	}

	int getRow() const
	{
		return this->rows;
	}

	int getColumn () const
	{
		return this->columns;
	}

private:
	int rows, columns;

	map <array<int,2>, T> sparseMap;
	
};

template<typename T>
int cg(const Matrix<T> &A, const Vector<T> &b, Vector<T> &x, T tol, int maxiter) 
{

	Vector<T> p(maxiter);
	Vector<T> r_k(maxiter);
	Vector<T> r_k1(maxiter);
	auto col = A.getColumn();
	Vector<T> x_temp(col);

	x = x_temp;

	p = b - A.Matvec(x);
	r_k = b - A.Matvec(x);

	//for k = 0, 1, ..., maxiter-1
	for(auto k = 0; k < maxiter; k++)
	{
		auto alpha = r_k.dot(r_k, r_k)/p.dot(p, A.Matvec(p));
		x = x + p*alpha;
		r_k1 = r_k - A.Matvec(p)*alpha;
		if(r_k1.dot(r_k1, r_k1) < (tol*tol))
		{
			return k;
		}
		auto beta = r_k1.dot(r_k1, r_k1)/r_k.dot(r_k, r_k);
		p = r_k1 + p*beta;
		r_k = r_k1;
	}
	return -1;
}

class Heat1D {

private:
	double alpha;
	int m;
	double dt;
	Matrix<double> M;
	Vector<double> w0;

public:

	Heat1D(double a,int points, double delta_t):alpha(a),m(points),dt(delta_t)
	{
		Matrix<double> M_temp(m,m); 
		Vector<double> wo_temp(m);
		
		for(auto i=0;i<m;i++)
		{
			for(auto j=0;j<m;j++)
			{
				if(i==j)
				{
					M_temp.AddElement({i,j},1 + alpha*dt*(m+1)*(m+1)*2);
				}
				else if((abs(i-j)==1) && ((i>j?i:j)%m != 0))
				{
					M_temp.AddElement({i,j},-alpha*dt*(m+1)*(m+1));
				}
			}
		}

		for(auto i=0;i<m;i++)
		{
			double t = sin(3.142*((i+1.0)/(m+1)));
			wo_temp.setData(t,i);
		}

		M = M_temp;
		w0 = wo_temp;

		// cout << "Matrix \r\n";
		// M.printMatrix();
		// cout << "Vector \r\n";
		// w0.Print();
	}

	Vector<double> exact(const double t)const
	{
		Vector<double> exact_sol(m);
		for(auto i=0;i<m;i++)
		{
			double temp = exp(-3.142*3.142*alpha*t)*w0.getData(i);
			exact_sol.setData(temp,i);
		}
		return exact_sol;
	}

	Vector<double> solve(const double t_end)const
	{
		Vector<double> num_sol(m);
		Vector<double> temp;
		temp = w0;
		for(auto i=0;i<=int(t_end/dt)-1;i++)
		{
			int retval = cg<double>(M,temp,num_sol,0.1,1000);
			temp = num_sol;
		}
		return num_sol;
	}

};




class Heat2D {

private:
	double alpha;
	int m;
	double dt;
	Matrix<double> M;
	Vector<double> w0;

public:

	Heat2D(double a,int points, double delta_t):alpha(a),m(points),dt(delta_t)
	{
		Matrix<double> M_temp(m*m,m*m); 
		Vector<double> wo_temp(m*m);
		
		for(auto i=0;i<m*m;i++)
		{
			for(auto j=0;j<m*m;j++)
			{
				if(i==j)
				{
					M_temp.AddElement({i,j},1 + alpha*dt*(m+1)*(m+1)*4);
				}
				else if((abs(i-j)==m) || (abs(i-j)==1) && ((i>j?i:j)%m != 0))
				{
					M_temp.AddElement({i,j},-alpha*dt*(m+1)*(m+1));
				}
			}
		}

		for(auto i=0;i<m;i++)
		{
			for(auto j=0;j<m;j++)
			{
				double t = sin(3.142*((i+1.0)/(m+1.0)))*sin(3.142*((j+1.0)/(m+1.0)));
				wo_temp.setData(t,i*m+j);
			}
		}

		M = M_temp;
		w0 = wo_temp;

	}

	
	Vector<double> exact(const double t)const
	{
		Vector<double> exact_sol(m*m);
		for(auto i=0;i<m*m;i++)
		{
			double temp = exp(-2*3.142*3.142*alpha*t)*w0.getData(i);
			exact_sol.setData(temp,i);
		}
		return exact_sol;
	}

	Vector<double> solve(const double t_end)const
	{
		Vector<double> num_sol(m*m);
		Vector<double> temp;
		temp = w0;
		for(auto i=0;i<=int(t_end/dt)-1;i++)
		{
			int retval = cg<double>(M,temp,num_sol,0.1,1000);
			temp = num_sol;
		}
		return num_sol;
	}

};

int main(){

	double alpha;
	int m;
	double dt;
	double t;

	int dimension;

	ofstream out_file; // Write to an output file

	Vector<double> sol;
	Vector<double> num_sol ;
	out_file.open("output.txt"); 


	cout << "Enter diffusion coefficient (alpha)" << endl;
	cin >> alpha;

	cout << "Enter the number of points per dimension" << endl;
	cin >> m;

	cout << "Enter timestep (dt)" << endl;
	cin >> dt;

	cout << "Enter time t" << endl;
	cin >> t;

	cout << "Enter 1 for 1D, Enter 2 for 2D" << endl;
	cin >> dimension;
	

	if(dimension == 1)
	{
		Heat1D h(alpha,m,dt);
		out_file << "Exact Solution" << endl;
		sol = h.exact(t);
		sol.Print(out_file);

		out_file << "Numerical Solution" << endl;
		num_sol = h.solve(1);
		num_sol.Print(out_file);
	}
	else if(dimension == 2)
	{
		Heat2D h(alpha,m,dt);
		out_file << "Exact Solution" << endl;
		sol = h.exact(0.5);
		sol.Print(out_file);

		out_file << "Numerical Solution" << endl;
		num_sol = h.solve(0.5);
		num_sol.Print(out_file);
	}
	else
	{
		cout << "Enter the correct dimension value, Exiting!" << endl;
		exit(1);
	}

	out_file << "Diff" << endl;
	Vector<double> diff = num_sol - sol;
	diff.Print(out_file);

	cout << "Program executed successfully, check 'output.txt' file" << endl;

return 0;
 
}


