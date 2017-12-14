#include <cmath>
#include <ostream>
#include <iomanip>

#include <iostream>
#include <memory>

#define constE 2.71828182845904523536

using namespace std;


class Derivative
{

public:
    virtual double differentiate(std::function<double(double)> func, double x) = 0;
    
    double h;
    Derivative()
    {
        h = pow(constE,-8);
    }

    Derivative(double val)
    {
        h = val;
    }

};


class CentralDifference: public Derivative
{
 public:
    using Derivative::Derivative;
    double differentiate(std::function<double(double)> func, double x)
    {
        double diff = (func(x+h) - func(x-h))/(2*h);
        return diff;
    }


};

class ForwardDifference: public Derivative
{
 public:
    using Derivative::Derivative;
    double differentiate(std::function<double(double)> func, double x)
    {
        double diff = (func(x+h) - func(x)) / h;
        return diff;
    }


};


// This is the function x^2
double func1(double x)
{
    double func_val = pow(x,2);
    return func_val;
}


int main(void)
{
    CentralDifference centDiff(pow(constE,-9));
    double point = 50;
    double diff = centDiff.differentiate(func1, point);
    cout << "Derivative(CentralDifference) of the func x^2 at " << point << " is " <<  diff << endl;


    ForwardDifference forwardDiff(pow(constE,-10));
    diff = forwardDiff.differentiate(func1, 50);
    cout << "Derivative(ForwardDifference) of the func x^2 at " << point << " is " <<  diff << endl;

    auto func2 = [](double x)
    {
        double func_val = 2*pow(x,3) + x;
        return func_val;
    };

    diff = centDiff.differentiate(func2, 50);
    cout << "Derivative(CentralDifference) of the func 2.x^3 + x at " << point << " is " <<  diff << endl;

    diff = forwardDiff.differentiate(func2, 50);
    cout << "Derivative(ForwardDifference) of the func 2.x^3 + x at " << point << " is " <<  diff << endl;

}

