#include <stdio.h>

int main()
{
    int x = 10;
    int y = 20;

    int *pX = &x;
    int *pY = &y;

    if(pX > pY){
        printf("Endereço da variavel x = %i, é maior que y = %i", pX, pY);
    }else{
        printf("Endereço da variavel Y = %i, é maior que x = %i", pY, pX);
    }
    return 0;
}
