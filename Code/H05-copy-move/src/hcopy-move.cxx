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
        std::cout << "  a has address " << &a << std::endl;
        std::cout << "Container b = { 4, 5, 6 };" << std::endl;
        Container b = { 4, 5, 6 };
        std::cout << "  b has address " << &b << std::endl;
        std::cout << "Container c(a);" << std::endl;
        Container c(a);
        std::cout << "  c has address " << &c << std::endl;
        std::cout << "Container d = a + b;" << std::endl;
        Container d = a + b;
        std::cout << "  d has address " << &d << std::endl;
        std::cout << "Container e;" << std::endl;
        Container e;
        std::cout << "  e has address " << &e << std::endl;
        std::cout << "e = a + b;" << std::endl;
        e = a + b;
        std::cout << "Container f(std::move(a + b));" << std::endl;
        Container f(std::move(a + b));
        std::cout << "  f has address " << &f << std::endl;
        std::cout << "Container g = a + b + c;" << std::endl;
        Container g = a + b + c;
        std::cout << "  g has address " << &g << std::endl;
        std::cout << "Container h;" << std::endl;
        Container h;
        std::cout << "  h has address " << &h << std::endl;
        std::cout << "h = a + b + c;" << std::endl;
        h = a + b + c;
        std::cout << "Container i = { a + b + c };" << std::endl;
        Container i = { a + b + c };
        std::cout << "  i has address " << &i << std::endl;
        std::cout << "end" << std::endl;

        return 0;
    }
