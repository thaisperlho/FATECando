#include <stdio.h>
#include <stdlib.h>

int main()
{
    int soma = 0;
    int numeros[7] = {7,21,3,4,5,11,8};
    int *p=malloc(sizeof(numeros));
    for (int i = 0; i<7; i++)
    {
        printf("%i, ", numeros[*p+i]);
        if (numeros[*p+i]%2 != 0){
            soma = soma + numeros[*p+i];
        }
    }
    printf("\nA soma do numeros ímpares = %i", soma);
    free(p);
    
    return 0;
}
