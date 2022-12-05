#include <stdio.h>

int main()
{
   int x = 10;
   double y = 22.3;
   char a = 'B';

   int *pX = &x;
   double *pY = &y;
   char *pA = &a;

   printf("Valores variaveis antes da modificacao %i, %.2f, %c", x,y,a);
   
   *pX = 20;
   *pY = 33.22;
   *pA = 'A';

    printf("\nValores variaveis depois da modificacao %i, %.2f, %c", x,y,a);
    return 0;
}
