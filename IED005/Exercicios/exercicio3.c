#include <stdio.h>
 
int main()
{
	float raio, pi=3.14, area;
	
	printf("Informe raio:  "); 
	scanf("%f", &raio);
 
	area = pi * raio * raio;
 
	printf("Area = %.2f m2 \n", area);
 
	return 0;
}