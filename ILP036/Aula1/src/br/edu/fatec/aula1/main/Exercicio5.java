package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exercicio5 {

	public static void main(String[] args) {
		int n1, n2, n3, produto;
		Scanner entrada = new Scanner(System.in);	
		System.out.println("Numero 1: "); 
		n1 = entrada.nextInt();
		System.out.println("Numero 2: "); 
		n2 = entrada.nextInt();
		System.out.println("Numero 3: "); 
		n3 = entrada.nextInt();
		produto = n1 * n2 * n3;
		System.out.println("O produto dos numeros é " + produto);

	}

}
