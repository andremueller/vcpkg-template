#include <iostream>
#include "module1.h"

int main(int argc, char **argv)
{
    double x = 0.1;
    double y = module1::square(x);
    std::cout << "x = " << x << std::endl
              << "y = " << y << std::endl;
    return 0;
}
