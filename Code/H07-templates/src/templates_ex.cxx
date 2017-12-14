#include <cmath>
#include <ostream>
#include <iomanip>

#include <iostream>
#include <memory>


using namespace std;


#define PRINT_EXPRESSION(expr)  cout << #expr << ": " << (expr) \
        << " (type: " << typeid(expr).name() << ")" << endl


template <typename R, typename X>

R add_simple(X x, X y)
{
    return x+y;    
}


template <typename X, typename Y>

auto add(X x, Y y) ->decltype(x+y)
{
    return x+y;    
}


template<typename A>
bool is_int(A a)
{
    return false;
}

template<>
bool is_int<int >(int a)
{
    return true;
}

template <typename T>
class Number
{
public:
    const T value;

    Number()
    {
        // Do nothing
    }

    Number(T temp_val):value(temp_val)
    {

    }

    template<typename U>
    auto operator +(Number<U> num2) ->Number<decltype(value + num2.value)>
    {
        Number <decltype(value + num2.value)> result(value + num2.value);
        return result;
    }

    template<typename U>
    auto operator -(Number<U> num2) ->Number<decltype(value - num2.value)>
    {
        Number <decltype(value - num2.value)> result(value - num2.value);
        return result;
    }

    template<typename U>
    auto operator /(Number<U> num2) ->Number<decltype(value / num2.value)>
    {
        Number <decltype(value / num2.value)> result(value / num2.value);
        return result;
    }

    template<typename U>
    auto operator *(Number<U> num2) ->Number<decltype(value * num2.value)>
    {
        Number <decltype(value * num2.value)> result(value * num2.value);
        return result;
    }
};


template <int n>
struct fibonacci
{
    static const int value = fibonacci<n-1>::value + fibonacci<n-2>::value;
};


template <>
struct fibonacci<1>
{
    static const int value = 1;
};


template <>
struct  fibonacci <0>
{
    static const int value = 0;
};


int main(void)
{


    cout << "Testing add_simple" << endl;
    int a = add_simple<int, int>(1, 2);
    PRINT_EXPRESSION(a);
    double b = add_simple<double, double>(1.5, 2.7);
    PRINT_EXPRESSION(b);

    cout << "Testing the add function" << endl;
    auto a1 = add<int, double>(1, 5.5);
    PRINT_EXPRESSION(a1);
    auto a2 = add<double, int>(18.6554, 14.2565);
    PRINT_EXPRESSION(a2);

    cout << "Testing is_int" << endl;
    bool a3 = is_int(5);
    PRINT_EXPRESSION(a3);

    a3 = is_int(4.2342);
    PRINT_EXPRESSION(a3);


    cout << "Testing the Number class" << endl;
    Number<int> x1(50);
    Number<double> x2(5.5);

    auto x3 = x1+x2;
    PRINT_EXPRESSION(x3.value);

    auto x4 = x1-x2;
    PRINT_EXPRESSION(x4.value);

    auto x5 = x1*x2;
    PRINT_EXPRESSION(x5.value);

    auto x6 = x1/x2;
    PRINT_EXPRESSION(x6.value);

    cout << "Testing the fibonacci implementation" << endl;

    int fib1 = fibonacci<18>::value;
    cout << "Fibonacci of 18 is : ";
    PRINT_EXPRESSION(fib1);

    int fib2 = fibonacci<14>::value;
    cout << "Fibonacci of 14 is : ";
    PRINT_EXPRESSION(fib2);

    int fib3 = fibonacci<5>::value;
    cout << "Fibonacci of 5 is : ";
    PRINT_EXPRESSION(fib3);

    return 0;
}

