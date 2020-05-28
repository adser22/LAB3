#include <stdio.h>
#define _USE_MATH_DEFINES
#define M_PI        3.14159265358979323846264338327950288
#include <math.h>
#include "perimetr.h"

float perimetr(float r)
{
    float p;
    p = 2 * M_PI * r;
    printf("perimeter = %f \n ", p);
    return p;
}