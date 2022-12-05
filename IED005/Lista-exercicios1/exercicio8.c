#include <stdio.h>
#include <math.h>

int main()
{
    int n1, n2;
    float n3, r1, r2, r3;

    printf("Informe o 1º numero inteiro: ");
    scanf("%i", &n1);
    printf("Informe o 2º numero inteiro: ");
    scanf("%i", &n2);
    printf("Informe o 3º numero real: ");
    scanf("%f", &n3);

    r1 = (n1*2) * (n2/2);
    r2 = (n1*3) + n3;
    r3 = pow(n3, 3);

    printf("• Resultado 1 =  %.2f \n• Resultado 2 =  %.2f \n• Resultado 3 =  %.2f \n", r1,r2,r3);

    

    return 0;
}


