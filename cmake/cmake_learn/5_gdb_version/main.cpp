#include <stdio.h>
#include <stdlib.h>
#include "config.h"
#include <iostream>


#ifdef USE_MYMATH
  #include <MathFunctions.h>
#else
  #include <math.h>
#endif

using namespace std;

int main(int argc, char *argv[])
{
    if (argc < 3){
        printf("Usage: %s base exponent \n", argv[0]);
        return 1;
    }
    cout << "Version:" << main_VERSION_MAJOR << "." << main_VERSION_MINOR<< endl;

    double base = atof(argv[1]);
    int exponent = atoi(argv[2]);

#ifdef USE_MYMATH
    printf("Now we use our own Math library. \n");
    double result = power(base, exponent);
#else
    printf("Now we use the standard library. \n");
    double result = pow(base, exponent);
#endif
    
    printf("%g ^ %d is %g\n", base, exponent, result);
    return 0;
}
