#include <iostream>
#include <initializer_list>
#include <memory>


class Container
{
public:
    // constructors
    Container()
    {
        length = 0;
        data = nullptr;
        print("Default constructor");
    }

    Container(int length)
    {
        this->length = length;
        data = new double[length];
        print("Constructor that takes one `int` argument and dynamically allocates data");
    }


    Container(std::initializer_list<double> list)
    :Container((int)list.size())
    {
        std::uninitialized_copy(list.begin(),list.end(), data);
        print("Delegating constructor");
    }

    Container(const Container& c)
    : Container(c.length)
    {
        for (auto i=0; i<c.length; i++)
            data[i] = c.data[i];
        print("Copy constructor entered");
    }

    Container(Container&& c)
    : length(c.length), data(c.data)
    {
        c.length = 0;
        c.data = nullptr;
        print("Move constructor entered");
    }
    // destructor
    ~Container()
    {
        delete[] data;
        length = 0;
        print("Destructor is called");
    }
    // operators

    Container& operator=(const Container& toCopy)
    {
        if (this != &toCopy)
            {
                delete[] data;
                length = toCopy.length;
                data   = new double(toCopy.length);
                for (auto i=0; i<toCopy.length; i++)
                    data[i] = toCopy.data[i];
            }
        print("Copying assignment operator");
        return *this;
    }

    Container& operator=(Container&& toMove)
    {
        if (this != &toMove)
            {
                delete[] data;
                length = toMove.length;
                data   = toMove.data;
                toMove.length = 0;
                toMove.data   = nullptr;
            }
        print("Move assignment operator");
        return *this;
    }

    Container operator+(const Container &other) const
    {
        if(length != other.length)
        {
            throw "Lenght of the containers are not the same";
        }
        else
        {
            Container sum(length);
            for(auto i=0;i<length;i++)
            {
                sum.data[i] = data[i] + other.data[i];
            }
            print("Operator + invoked");

            return sum;
        }
    }


    void print(const std::string &info) const
    {
        // print the address of this instance, the attributes `length` and
        // `data` and the `info` string
        std::cout << "  " << this << " " << length << " " << data << "  "
            << info << std::endl;
    }

private:
    int length;
    double *data;
};


     int main()
    {
        std::cout << "Container a({ 1, 2, 3 });" << std::endl;
        Container a({ 1, 2, 3 });
        // First the constructor which takes a list as input will be called 'Container(std::initializer_list<double> list)
        // This constructor delegates the task to the constructor which takes 1 input of type int 'Container(int length)'
        // Now, this delegated constructor allocates the memory, then returns, and now the delegating 
        // constructor deep copies the list into data pointer.
        std::cout << "  a has address " << &a << std::endl;
        

        std::cout << "Container b = { 4, 5, 6 };" << std::endl;
        Container b = { 4, 5, 6 };
        // First the constructor which takes a list as input will be called. 'Container(std::initializer_list<double> list)
        // This constructor delegates the task to the constructor which takes 1 input of type int 'Container(int length)'
        // Now, this delegated constructor allocates the memory, then returns, and now the delegating 
        // constructor deep copies the list into data pointer.
        std::cout << "  b has address " << &b << std::endl;


        std::cout << "Container c(a);" << std::endl;
        Container c(a);

        // Here, first the copy constructor is called 'Container(const Container& c)', this constructor delegates the memory allocation
        // task to another constructor 'Container(int length)'. After memory allocation is done by 'Container(int length)' it returns
        // and 'Container(const Container& c)' will now copy the data from the passed container object 'c' to its own member 'data'
        std::cout << "  c has address " << &c << std::endl;


        Container d = a + b;
        std::cout << "Container d = a + b;" << std::endl;
        // Here, first the 'operator+' is called by a + b. The 'operator+' inturn creates a container object. 
        // Now, the constructor Container(int length) for this created object is called.
        // Finally, the move constructor is called which does a shallow copy of the result of a+b into d
        std::cout << "  d has address " << &d << std::endl;

        std::cout << "Container e;" << std::endl;
        Container e;
        // Calls the default constructor 'Container()'
        std::cout << "  e has address " << &e << std::endl;
        std::cout << "e = a + b;" << std::endl;

        e = a + b;
        // Here, first the 'operator+' is called by a + b. The 'operator+' inturn creates a container object. 
        // Now, the constructor Container(int length) for this created object is called. 'a+b' operator calls a 
        // move constructor, Container(Container&& c). The destructor for the created object by 'operator+' is called 
        // 'e=a+b' calls the Move assignment operator finally 'Container& operator='. 

        std::cout << "Container f(std::move(a + b));" << std::endl;
        Container f(std::move(a + b));
        // Here, first the 'operator+' is called by a + b. The 'operator+' inturn creates a container object. 
        // Now, the constructor Container(int length) for this created object is called. 'a+b' operator calls a 
        // move constructor, Container(Container&& c). The destructor for the created object by 'operator+' is called 
        // Finally, again a Move constructor 'Container(Container&& c)' is called to move the data(shallow copy) into 'f'
        std::cout << "  f has address " << &f << std::endl;

        std::cout << "Container g = a + b + c;" << std::endl;
        Container g = a + b + c;
        // Assuming the compiler evaluates the expression 'a+b', first the 'operator+' is called by a + b. The 'operator+' inturn creates a container object. 
        // Now, the constructor 'Container(int length)' for this created object is called. 'a+b' operator calls a 
        // move constructor, 'Container(Container&& c)'. The destructor for the created object by 'operator+' is called. Now,again operator+ is invoked by '(a+b)+c', 
        // This again creates a container object 'Container(int length)' for this created object. Container g = a + b + c, will call
        // the move constructor 'Container(Container&& c)'. Finally, the destructor for the created object by 'operator+' is called.
        std::cout << "  g has address " << &g << std::endl;
        std::cout << "Container h;" << std::endl;
        Container h;
        // Calls the default constructor 'Container()'
        std::cout << "  h has address " << &h << std::endl;

        std::cout << "h = a + b + c;" << std::endl;
        // 'a+b' call the 'operator+'(assuming evaluation happens left to right). 'operator+' creates a new object, whose
        // constructor 'Container(int length)'  is called. Move constructor is called for the operation 'a+b'. 
        // Destructor will be called fro the created object by 'operator+'. 
        // again 'operator+' is called by 'a+b+c', 'operator+' creates a new object, whose
        // constructor 'Container(int length)'  is called. Move constructor is called for the operation 'a+b+c'. 
        // Destructor will be called fro the created object by 'operator+'. 
        // Finally the move assignment operator for the assignment 'h=a+b+c' will be called. 
        h = a + b + c;
        std::cout << "Container i = { a + b + c };" << std::endl;

        Container i = { a + b + c };
        // Assuming the compiler evaluates the expression 'a+b', first the 'operator+' is called by a + b. The 'operator+' inturn creates a container object. 
        // Now, the constructor 'Container(int length)' for this created object is called. 'a+b' operator calls a 
        // move constructor, 'Container(Container&& c)'. The destructor for the created object by 'operator+' is called. Now,again operator+ is invoked by '(a+b)+c', 
        // This again creates a container object 'Container(int length)' for this created object. Container i = {a + b + c}, will call
        // the move constructor 'Container(Container&& c)'. Finally, the destructor for the created object by 'operator+' is called.

        std::cout << "  i has address " << &i << std::endl;
        std::cout << "end" << std::endl;

        // Finally, the destructor for all the objects created in main() will be called here
        return 0;
    }
