#include <stdio.h>
#include <math.h>
#include "intersection.h"

void intersection(float *X, float *Y, float *R, int n)
{
	int i,j;
	float x,y,d;
	for (i = 0; i < n ; i++) 
	{
        for (j = i + 1; j < n; j++) 
        {
            x = X[i] - X[j];
            y = Y[i] - Y[j];
            d = sqrt(pow(x, 2) + pow(y, 2));
            if (d <= (R[i] + R[j]))
                printf("Окржности №%d и №%d пересекаются\n", i, j);
        }
    }
}