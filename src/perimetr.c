#include <stdio.h>
#define _USE_MATH_DEFINES
#include <math.h>
#include "perimetr.h"

void perimetr(float r)
{
    float p;
    p = 2 * M_PI * r;
    printf("perimeter = %f \n ", p);
}