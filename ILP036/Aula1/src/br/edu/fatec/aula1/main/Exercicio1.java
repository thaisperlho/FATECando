package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[] args) {
		float salario;
		Scanner entrada = new Scanner(System.in);	
		System.out.println("Informe valor do salário"); 
		salario = entrada.nextFloat();		
		if (salario > 1000)     
	   	     System.out.println("Você é muito rico!");    
		else  
	         System.out.println("Trabalhe mais abestado!!!");
		entrada.close();
	}

}
