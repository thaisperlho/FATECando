#include <stdio.h>
 
int main()
{
	int lado, area;
	
	printf("Informe lado:  "); 
	scanf("%i", &lado);
 
	area = lado * lado;
 
	printf("A area do quadrado = %i", area);
 
	return 0;
}