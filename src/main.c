#include <stdio.h>
#define _USE_MATH_DEFINES
#include <math.h>
#include "area.h"
#include "perimetr.h"

int main()
{
    int n, i;
    printf("Введите количество окружностей\n");
    scanf("%d", &n);
    float X[n], Y[n], R[n];

    for (i = 1; i < n + 1; i++) {
        printf("%d.Введите координаты центра окржности и его радиус:\n", i);
        printf("X = ");
        scanf("%f", &X[i]);
        printf("Y = ");
        scanf("%f", &Y[i]);
        printf("R = ");
        scanf("%f", &R[i]);
        printf("\n");
    }
    float r;
    for (i = 1; i < n + 1; i++) 
    {
        printf("%d. circle(%f %f, %f)\n ", i, X[i], Y[i], R[i]);
        r = R[i];
        perimetr(r);
        area(r);

    }
    return 0;
}
