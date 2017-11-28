/*

    Comment on `const` and `&` here.  See ../README.md.
    In general const is used when that arguement is not allowed to be changed in the function.
    This is generally useful when passing by reference, where we pass the reference of the object to a method
    but we intend that the method will not modify this object. 

    For example:
    double distance(const Point &other) const

    Here the reference for object other is passed, the distance method is not allowed to modify 'other'.

    The ending 'const' in the above function will not allow to modify *this object. 


    '&' is used to pass the arguements by reference, as opposed to just passing the value. By passing the constant 
    reference it can be made sure that the passed arguements value will not be modified in the method. 



 */

#include <cmath>
#include <ostream>
#include <iomanip>


class Point
{
public:

    double x;
    double y;
    // Default constructors
    Point()
    {
        x = 0;
        y = 0;
    }

    // Parameterized constructor

    Point(double a, double b)
    {
        x = a;
        y = b;
    }
    // operators

    Point operator+(const Point & other) const
    {
        Point temp;
        temp.x = x + other.x;
        temp.y = y + other.y;
        return temp;
    }

    Point operator-(const Point & other) const
    {
        Point temp;
        temp.x = x - other.x;
        temp.y = y - other.y;
        return temp;
    }

    Point& operator+=(const Point & other) 
    {
        x = x + other.x;
        y = y + other.y;
        return *this;
    }

    Point& operator-=(const Point & other) 
    {
        x = x - other.x;
        y = y - other.y;
        return *this;
    }
    // methods
    double distance() const
    {
        double dist = 0;
        dist  = sqrt(pow(x,2) + pow(y,2));
        return dist;
    }
    double distance(const Point &other) const
    {
        double dist = 0;
        dist = sqrt(pow(x-other.x,2) + pow(y-other.y,2));
        return dist;
    }


    Point rotated(double angle) const
    {
        Point temp;

        temp.x = x*cos(angle) - y*sin(angle);
        temp.y = x*sin(angle) + y*cos(angle);
        return temp;
    }

    Point rotated(double angle, const Point & other) const
    {
        Point temp;

        temp.x = cos(angle) * (x-other.x) - sin(angle) * (y-other.y) + other.x;
        temp.y = sin(angle) * (x-other.x) + cos(angle) * (y-other.y) + other.y;

        return temp;
    }

    Point &rotate(double angle)
    {
        x = x*cos(angle) - y*sin(angle);
        y = x*sin(angle) + y*cos(angle);
        return *this;
    }

    Point &rotate(double angle, const Point & other) 
    {
        x = cos(angle) * (x-other.x) - sin(angle) * (y-other.y) + other.x;
        y = sin(angle) * (x-other.x) + cos(angle) * (y-other.y) + other.y;
        return *this;
    }


};

class Triangle
{
public:
    Triangle() : a(),b(),c()
    {

    }

    Triangle(Point p, Point q, Point r): a(p.x,p.y),b(q.x,q.y),c(r.x,r.y)
    {

    }

    Triangle translated(Point t) const
    {
        Triangle temp;
        temp.a.x = a.x + t.x;
        temp.a.y = a.y + t.y;

        temp.b.x = b.x + t.x;
        temp.b.y = b.y + t.y;

        temp.c.x = c.x + t.x;
        temp.c.y = c.y + t.y;

        return temp;

    }

    Triangle &translate(const Point & t)
    {
        a.x = a.x + t.x;
        a.y = a.y + t.y;

        b.x = b.x + t.x;
        b.y = b.y + t.y;

        c.x = c.x + t.x;
        c.y = c.y + t.y;

        return *this;
    }

    Triangle rotated(double angle) const
    {
        Triangle temp;

        temp.a = a.rotated(angle);
        temp.b = b.rotated(angle);
        temp.c = c.rotated(angle);

        return temp;
    }

    Triangle rotated(double angle,const Point & other) const
    {

        Triangle temp;

        temp.a = a.rotated(angle,other);
        temp.b = b.rotated(angle,other);
        temp.c = c.rotated(angle,other);

        return temp;       
    }

    Triangle &rotate(double angle)
    {

        a.rotate(angle);
        b.rotate(angle);
        c.rotate(angle);

        return *this;
    }

    Triangle &rotate(double angle, const Point & other)
    {

        a.rotate(angle,other);
        b.rotate(angle,other);
        c.rotate(angle,other);

        return *this;
    }

    double area() const
    {
        double T_area;
        T_area = 0.5*fabs(a.x*b.y + b.x*c.y + c.x*a.y - b.x*a.y -c.x*b.y - a.x*c.y);
        return T_area;
    }

    Point a, b, c;
};

// ostream operator for `Point`s
std::ostream &operator<<(std::ostream &os, const Point &p)
{
    // remember current flags, precision
    auto flags = os.flags();
    auto current_precision = os.precision();
    // output numers with fixed point and three decimal precision
    os.setf(std::ios::fixed, std::ios::floatfield);
    os.precision(3);
    // output point `p`
    os << "(" << std::setw(6) << std::setfill(' ') << p.x
        << "," << std::setw(6) << std::setfill(' ') << p.y << ")";
    // restore current flags, precision
    os.flags(flags);
    os.precision(current_precision);
    return os;
}

// ostream operator for `Triangle`s
std::ostream &operator<<(std::ostream &os, const Triangle &t)
{
    return os << "Triangle< " << t.a << ", " << t.b << ", " << t.c <<  " >";
}


#include <iostream>
using namespace std;

int main()
{
    // example, replace with your tests

    Point p(5,5);
    Point q(6,6);
    Point r;

    Triangle t;

    // set point `p` to (1, 2)
    //p.x = 1;
    //p.y = 2;

    // set triangle `t` to (1, 2), (3, 4), (5, 6)
    t.a.x = 1;
    t.a.y = 2;
    t.b.x = 3;
    t.b.y = 4;
    t.c.x = 5;
    t.c.y = 6;

    // Testing the '+' and '-' operator overloading
    r = p + q;
    cout << r << endl;
    r = p - q;
    cout << r << endl;
    
    p += q;
    cout << p << endl;

    p -= q;
    cout << p << endl;

    Point a = {3,4};
    double x = a.distance();
    cout << "distance between " << a << " and origin is " << x << endl;

    Point b = {6,8};
    x = a.distance(b);
    cout << "Distance between " << a << b << " is " << x << endl;

    

    Point c = a.rotated(M_PI);

    cout << "Function \"rotated\""  << a << "by pi radians " << c <<endl;

    Point z = {5,6};
    c = a.rotated(M_PI,z);
    cout << "Function \"rotated\"" << a << "by pi radians around"  << z << "gives " << c <<endl;

    cout << "Function \"rotate\"" << a << "by pi radians ";
    a.rotate(M_PI);
    cout << a << endl;

    a.x = 3;
    a.y = 4;

    cout << "Function \"rotate\"" << a << "by pi radians around"  << z << "gives ";
    a.rotate(M_PI,b);

    cout << c <<endl;

    Point p1(-8,6),p2(-8,9),p3(-4,6);
    Triangle t1(p1,p2,p3);

    Point temp(9,-4);
    Triangle t2 = t1.translated(temp);
    cout << "Function \"translated\" " << t1 << "by point " << temp << "gives " << t2 << endl;

    cout << "Function \"translate\" " << t1 << "by point " << temp << "gives ";
    t1.translate(temp);
    cout << t1 << endl;
    

    t2 = t1.rotated(M_PI);
    cout << "Function \"rotated\" " << t1 << "by angle " << M_PI << "gives " << t2 << endl;

    t2 = t1.rotated(M_PI,temp);
    cout << "Function \"rotated\" " << t1 << "by angle " << M_PI << "and point " << temp <<" gives " << t2 << endl;

    cout << "Function \"rotate\" " << t1 << "by angle " << M_PI << "gives ";
    t1.rotate(M_PI);
    cout << t1 << endl;

    cout << "Function \"rotate\" " << t1 << "by angle " << M_PI << "and point " << temp <<" gives ";
    t1.rotate(M_PI,temp);
    cout << t1 << endl;

    Triangle t3 = {{0, 0}, {0, 1}, {1, 0}};
    t3.translate({2, 3}).rotate(M_PI/2, {-1, -3}).translate({5, 6});

    cout << "Chain in-place translation and rotation function" << t3<< endl;

    Triangle t4 = {{0, 0}, {3, 4}, {3, 0}};
    double ar = t4.area();
    cout << "Area of the triangle" << t4 << "is :" << ar << endl;

    //cout << t2 << endl;

}
