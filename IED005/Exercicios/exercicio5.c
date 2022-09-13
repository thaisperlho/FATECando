#include <stdio.h>

int main()
{
    float salario, custo_hora, horas_mes;

    printf("Quanto ganha por hora? ");
    scanf("%f", &custo_hora);
    printf("Quantas horas trabalhou nesse mes? ");
    scanf("%f", &horas_mes);

    salario = custo_hora * horas_mes;

    printf("Seu salário esse mes é %.2f", salario);
    
    return 0;
}
