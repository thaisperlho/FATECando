#include <stdio.h>
#include <math.h>

int main()
{
    int raio;

    float volume(int raio);
    printf("Digite o valor do raio: ");
    scanf("%i", &raio);
    
    printf("O volume da esfera e %.2f m³ ", volume(raio));
    return 0;
}

float volume(int raio){
    float v;
    v = (4*3.1415*pow(raio,3))/3;
    return v;
}
