#include <stdio.h>

int main()
{
    float salario, prestacao;

    printf("Digite seu salário = ");
    scanf("%f",&salario);

    printf("Digite valor prestação = ");
    scanf("%f",&prestacao);

    if(prestacao > salario*0.2){
        printf("Empréstimo não pode ser concedito.");
    }else{
        printf("Empréstimo pode ser concedido");
    }

    return 0;
}