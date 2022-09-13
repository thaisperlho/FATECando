#include <stdio.h>

int main()
{
    float altura, peso_ideal;

    printf("Informe sua altura: ");
    scanf("%f", &altura);

    peso_ideal = (72.7*altura) - 58;

    printf("Seu peso ideal = %.1f", peso_ideal);

    return 0;
}
