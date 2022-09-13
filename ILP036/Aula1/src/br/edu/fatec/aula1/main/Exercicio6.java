package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exercicio6 {

	public static void main(String[] args) {
		int n1, n2, n3;
		Scanner entrada = new Scanner(System.in);	
		System.out.println("Numero 1: "); 
		n1 = entrada.nextInt();
		System.out.println("Numero 2: "); 
		n2 = entrada.nextInt();
		System.out.println("Numero 3: "); 
		n3 = entrada.nextInt();
		if (n1 > n2 && n1 > n3) {
			System.out.println("O número maior é  " + n1);
		}
		else if(n2 > n1 && n2 > n3){
			System.out.println("O número maior é  " + n2);
		}
		else {
			System.out.println("O número maior é  " + n2);
		}
		entrada.close();
	}
}
