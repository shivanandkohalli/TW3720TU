/**
 * \file namespaces.cxx
 *
 * This file is part of the course tw3720tu:
 * Object Oriented Scientific Programming with C++
 *
 * \author Matthias Moller
 *
 */

// Include header file for standard input/output stream library
#include <iostream>

namespace tudelft
{
    void hello()
    {
        std::cout << "Hello TU Delft" << std::endl;
    }
}

namespace other
{
    void hello()
    {
        std::cout << "Hello other" << std::endl;
    }
}

// The global main function that is the designated start of the program
int main(){
    
    tudelft::hello();
    other::hello();

    {
        using namespace tudelft;
        hello();
    }

    {
        using namespace other;
        hello();
    }

    using namespace tudelft;
    hello();

    // This does not work !!!
    // using namespace other;
    // hello();
    
    // Return code 0 to the operating system (=no error)
    return 0;
}
