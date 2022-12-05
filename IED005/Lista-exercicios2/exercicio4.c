#include <stdio.h>
#include <math.h>

int main()
{
    int i, numero[10];

    printf("Pedindo numeros ao usuario\n\n");
    for (i = 0; i < 10; i++)
    {
        printf("Digite um numero: ");
        scanf("%i", &numero[i]);
    }

    printf("Exibindo numeros localizados nas posições ímpares \n\n");

    for (i = 0; i < 10; i++)
    {
        if (i%2!=0)
        {
            printf("Posicao %i = %i\n",i, numero[i]);
        }
        
    }
    

    return 0;
}
