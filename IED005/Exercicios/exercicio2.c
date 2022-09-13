#include <stdio.h>

int main(){

  float metros=0, centimetros=0;

  printf("Quantos metros: ");
  scanf("%f", &metros);
 
  centimetros = metros * 100;

  printf("Resultado e %.1f cm", centimetros);

  return 0;
}