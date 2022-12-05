#include <stdio.h>
#include <math.h>
int main()
{
    int n1, n2, i;

    printf("Digite numero 1 = ");
    scanf("%i",&n1);

    printf("Digite numero 2 = ");
    scanf("%i",&n2);

    if(n1 > n2)
    {
        for(i=0;i<=n1;i++){
            if(i%2==0){
                printf("%i\n", i);
            }
        }
    }else{
        for(i=0;i<=n2;i++){
            if(i%2==0){
                printf("%i\n", i);
            }
        }

    }
    return 0;
}