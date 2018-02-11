#include <cmath>
#include <ostream>
#include <iomanip>

#include <iostream>
#include <memory>

using namespace std;

template<int value>

struct ConstInt
{
    static const double eval(double z)
    {
        // As its evaluation will be the same 
        return value; 
    };

    typedef ConstInt<0> derivative ;

};


template <typename A, typename B>
struct Add
{
    static const double eval(double x)
    {
        return A::eval(x) + B::eval(x);
    }

    typedef Add<typename A::derivative, typename B::derivative> derivative;
};


template <typename A, typename B>
struct  Mul
{
    static const double eval(double x)
    {
        return A::eval(x) * B::eval(x);
    }

    typedef Add<Mul<A, typename B::derivative>, Mul<B, typename A::derivative>> derivative;
};

template <int exp>
struct Monomial
{
    static const double eval(double x)
    {
        return pow(x, exp);
    }

    typedef Mul<ConstInt<exp>, Monomial<exp-1>> derivative;
};




template <typename A>
struct Negative
{
    static const double eval(double x)
    {
        return (-A::eval(x));
    }

    typedef Mul<Negative<ConstInt<1>>, A> derivative;
};


class Cos; 

struct Sin
{
    static const double eval(double x)
    {
        return sin(x);
    }

    typedef Cos derivative;
    
};



struct Cos
{
    static const double eval(double x)
    {
        return cos(x);
    }

    typedef Negative<Sin> derivative;
    
};



int main(void)
{

    cout << ConstInt<8>::derivative::eval(10) << endl;

    cout << Monomial<5>::derivative::eval(2) << endl;

    cout << Sin::derivative::eval(M_PI) << endl;    

    cout << Cos::derivative::eval(M_PI) << endl;    

    cout << Sin::derivative::eval(M_PI/2) << endl;    

    cout << Cos::derivative::eval(M_PI/4) << endl;    

    cout << Monomial<3>::derivative::eval(5) << endl;

    cout << Add<Sin, Cos>::derivative::eval(M_PI/2) << endl;    
    
    cout << Mul<Monomial<2>, Monomial<2>>::derivative::eval(3) << endl;

    cout << Mul<ConstInt<1>, Monomial<2>>::derivative::eval(3) << endl;

    cout << Add<ConstInt<10>, Monomial<5>>::derivative::eval(10) << endl;

    
    return 0;
}

