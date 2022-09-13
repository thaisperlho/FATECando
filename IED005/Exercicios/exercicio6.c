#include <stdio.h>

int main()
{
    float F, C;

    printf("Graus Fahrenheit = ");
    scanf("%f",&F);

    C = (5 * (F-32) / 9);

    printf("Graus Celsius = %.5f", C);

    return 0;
}
