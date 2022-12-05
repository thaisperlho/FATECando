#include <stdio.h>
#include <math.h>

int main()
{
    int matriz[4][4];

    for(int linha=0; linha<4; linha++){
        for(int coluna=0;coluna<4;coluna++){
            printf("Digite o valor da linha %i coluna %i ", linha, coluna);
            scanf("%i",&matriz[linha][coluna]);
        }
        printf("\n");
    }

    for (int linha=0; linha< 4; linha++)
    {
        for (int coluna=0; coluna<4; coluna++)
        {
            if(matriz[linha][coluna] > 10){
                printf("%i ", matriz[linha][coluna]);
            }   
        }
        printf("\n");
        
    }
    getchar();
    return 0;
}
