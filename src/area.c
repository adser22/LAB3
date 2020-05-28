#include <stdio.h>
#include "area.h"
#include <math.h>
#define _USE_MATH_DEFINES
#define M_PI        3.14159265358979323846264338327950288

float area(float r)
{
        float s;
        float r2;
        r2 = pow(r, 2);
        s = M_PI * r2;
        printf("area = %f \n", s);
    	return s;
}