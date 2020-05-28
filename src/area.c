#include <stdio.h>
#include "area.h"
#include <math.h>
#define _USE_MATH_DEFINES

void area(float r)
{
        float s;
        float r2;
        r2 = pow(r, 2);
        s = M_PI * r2;
        printf("area = %f \n", s);
}