#include <stdio.h>
#include <math.h>
#include "intersection.h"

int intersection(float *X, float *Y, float *R, int n)
{
	int i,j,test;
	float x,y,d;
	for (i = 0; i < n ; i++) 
	{
        for (j = i + 1; j < n; j++) 
        {
            x = X[i] - X[j];
            y = Y[i] - Y[j];
            d = sqrt(pow(x, 2) + pow(y, 2));
            if (d <= (R[i] + R[j]))
            {    
                test = 1;
                printf("Окружности №%d и №%d пересекаются\n", i, j);
            }
        }
    }
    return test;
}