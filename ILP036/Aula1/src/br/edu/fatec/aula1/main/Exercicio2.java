package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exercicio2 {

	public static void main(String[] args) {
		int tipo, area, lado, base, altura;
		Scanner entrada = new Scanner(System.in);	
		System.out.println("Informe qual a área que deseja calcular \n 1-Quadrado \n 2-Triangulo");
		tipo = entrada.nextInt();		
		if (tipo == 1) {
			System.out.println("-");
	   	    System.out.println("Você escolheu quadrado");
			System.out.println("Informe o lado do quadrado: ");
			lado = entrada.nextInt();
			area = lado * lado;
			System.out.println("Area do quadrado é = " + area);
		
		}
		else if (tipo == 2) {
	        System.out.println("Você escolheu triângulo");
			System.out.println("Informe o valor da base do triangulo: ");
			base = entrada.nextInt();
			System.out.println("Informe o valor da altura do triangulo: ");
			altura = entrada.nextInt();
			area = (base * altura) / 2;
			System.out.println("Area do triangulo é = " + area);
		}
		
	}

}
