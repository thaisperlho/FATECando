#include <stdio.h>

int main()
{
    int x = 1000;
    int y = 200;

    int *pY = &y;
    int *pX = &x;
    
    if(pX > pY){
        printf("Endereço da variavel x = %p, é maior que y = %i", pX, pY);
    }else{
        printf("Endereço da variavel Y = %p, é maior que x = %i", pY, pX);
    }
    return 0;
}
