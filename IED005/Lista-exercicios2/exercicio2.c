#include <stdio.h>

int main()
{
    int cod;
    float qdte, valor,total, desconto;
    printf("Valor produto = ");
    scanf("%f",&valor);
    printf("Quantidade = ");
    scanf("%f",&qdte); 
    total = valor * qdte;
    printf("Digite o codigo do tipo de pagamento = ");
    scanf("%i",&cod);

    switch (cod){
    case 0: 
        desconto = total*0.25;
        printf("Valor da compra %.2f\nValor do desconto %.2f\nValor final %.2f\nPagamento A VISTA", total, desconto, total-desconto);
    break;
    case 1: 
        desconto = total*0.2;
        printf("Valor da compra %.2f\nValor do desconto %.2f\nValor final %.2f\nPagamento Cheque(30 dias)", total, desconto, total-desconto);
    break;
    case 2: // mostrar o topo
        desconto = total*0.1;
        printf("Valor da compra %.2f\nValor do desconto %.2f\nValor final %.2f\nPagamento Cartao Crédito(2x)", total, desconto, total-desconto);
    break;
    case 3: // mostrar o topo
        desconto = total*0.05;
        printf("Valor da compra %.2f\nValor do desconto %.2f\nValor final %.2f\nPagamento Cartao Crédito(3x)", total, desconto, total-desconto);
    break;
    default: 
    printf("Valor da compra %.2f\nSem desconto\nValor final %.2f\nNegociada com vendedor", total, total);
    break;
    }
    return 0;
}