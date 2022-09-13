package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exemplo4 {

	public static void main(String[] args) {
		float  media;	
		Scanner entrada = new Scanner(System.in);	
		System.out.println("Informe a nota da média");	
	 	media = entrada.nextFloat();
		if (media > 6)     
	   	     System.out.println("Aprovado");    
		else  
	                      System.out.println("Reprovado!!!");

		entrada.close();
	}

}
