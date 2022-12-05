#include <stdio.h>

int main()
{
    float tam_arquivo, velocidade, tempo;

    printf("Informe tamanho do arquivo (em MB): ");
    scanf("%f", &tam_arquivo);
    printf("Informe velocidade do link (em Mbps): ");
    scanf("%f", &velocidade);

    tempo = (tam_arquivo / (velocidade/8)) * 60;

    printf("O tempo aproximado de download é %.1f minutos", tempo);
    return 0;
}
