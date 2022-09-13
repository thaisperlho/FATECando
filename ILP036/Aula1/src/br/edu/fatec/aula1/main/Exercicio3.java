package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exercicio3 {

	public static void main(String[] args) {
		float notaP1, notaP2, notaP3, ms, notaA1;
		Scanner entrada = new Scanner(System.in);	
		System.out.println("Informe a nota da P1"); 
		notaP1 = entrada.nextFloat();
		System.out.println("Informe a nota da P2"); 
		notaP2 = entrada.nextFloat();
		System.out.println("Informe a nota da A2"); 
		notaA1 = entrada.nextFloat();
		ms = (notaP1 + (2 * notaP2) + notaA1) / 4;
	  	if (ms >= 6){      
		  System.out.println("Aprovado!");     
		}
		else{
			System.out.println("Informe a nota da P3"); 
			notaP3 = entrada.nextFloat();
			ms = (notaP3 + ms) / 2;
		     if(ms > 6)         
		        System.out.println("Aprovado!");    
		     else        
	 	        System.out.println("Reprovado!");    
	              }
		entrada.close();
	}

}
