#include <stdio.h>

int main()
{
    float F, C;

    printf("Graus Celsius = ");
    scanf("%f",&C);

    F = (9 * C + 160) / 5;

    printf("Graus Fahrenheit = %.1f", F);

    return 0;
}