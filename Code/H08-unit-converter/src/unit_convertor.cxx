#include <cmath>
#include <ostream>
#include <iomanip>

#include <iostream>
#include <memory>


using namespace std;

enum class Unit {km, m, cm};

template<Unit u1, Unit u2>
struct Compute_factor
{
    static const int factor = 1;
};

template <>
struct Compute_factor<Unit::km, Unit::m>
{
    static const int factor = 1000;
};

template <>
struct Compute_factor<Unit::km, Unit::cm>
{
    static const int factor = 100000;
};


template <>
struct Compute_factor<Unit::m, Unit::km>
{
    static const int factor = 1;
};


template <>
struct Compute_factor<Unit::m, Unit::cm>
{
    static const int factor = 100;
};


template <>
struct Compute_factor<Unit::cm, Unit::m>
{
    static const int factor = 1;
};


template <>
struct Compute_factor<Unit::cm, Unit::km>
{
    static const int factor = 1;
};



template <Unit u1, Unit u2>
struct Compute_Unit
{
    static const Unit calc_unit = u1;
};


template<>
struct Compute_Unit<Unit::km, Unit::cm>
{
    static const Unit calc_unit = Unit::cm;
};




template<>
struct Compute_Unit<Unit::km, Unit::m>
{
    static const Unit calc_unit = Unit::m;
};




template<>
struct Compute_Unit<Unit::m, Unit::km>
{
    static const Unit calc_unit = Unit::m;
};



template<>
struct Compute_Unit<Unit::m, Unit::cm>
{
    static const Unit calc_unit = Unit::cm;
};




template<>
struct Compute_Unit<Unit::cm, Unit::m>
{
    static const Unit calc_unit = Unit::cm;
};




template<>
struct Compute_Unit<Unit::cm, Unit::km>
{
    static const Unit calc_unit = Unit::cm;
};



struct MeasureBase{};

template<int v, Unit u>
struct Measure : public MeasureBase
{
    static const int value = v;
    static const Unit unit = u;
};


template<typename a, typename b, bool = std::is_base_of<MeasureBase, a>::value &&
                                        std::is_base_of<MeasureBase, b>::value>
struct  Measure_add;

template<typename a, typename b>
struct  Measure_add<a,b,true>
{
    static const int value = (a::value*Compute_factor<a::unit,b::unit>::factor + b::value*Compute_factor<b::unit,a::unit>::factor);
    static const Unit unit = Compute_Unit<a::unit,b::unit>::calc_unit;
};




int main(void)
{

    std::cout << Measure_add< Measure<10,Unit::m>, Measure<20,Unit::m> >::value  << std::endl;
    std::cout << (int)Measure_add< Measure<10,Unit::km>, Measure<20,Unit::m> >::unit  << std::endl;


    std::cout << Measure_add< Measure<50,Unit::cm>, Measure<30,Unit::m> >::value  << std::endl;
    std::cout << (int)Measure_add< Measure<50,Unit::cm>, Measure<30,Unit::m> >::unit  << std::endl;


    std::cout << Measure_add< Measure<10,Unit::km>, Measure<20,Unit::km> >::value  << std::endl;
    std::cout << (int)Measure_add< Measure<10,Unit::km>, Measure<20,Unit::km> >::unit  << std::endl;


    std::cout << Measure_add< Measure<1,Unit::km>, Measure<500,Unit::cm> >::value  << std::endl;
    std::cout << (int)Measure_add< Measure<1,Unit::km>, Measure<500,Unit::cm> >::unit  << std::endl;


    std::cout << Measure_add< Measure<10,Unit::cm>, Measure<200,Unit::m> >::value  << std::endl;
    std::cout << (int)Measure_add< Measure<10,Unit::cm>, Measure<200,Unit::m> >::unit  << std::endl;


    std::cout << Measure_add< Measure<80,Unit::m>, Measure<5,Unit::km> >::value  << std::endl;
    std::cout << (int)Measure_add< Measure<80,Unit::m>, Measure<5,Unit::km> >::unit  << std::endl;

    return 0;
}

