package br.edu.fatec.aula1.main;

import java.util.Scanner;

public class Exemplo5 {

	public static void main(String[] args) {
		float  media;	
		Scanner entrada = new Scanner(System.in);	 
		System.out.println("Informe a nota da média");
		 media = entrada.nextFloat();	 
	  	 if (media <3){      
		  System.out.println("Reprovado ");     
		}
		else{
		        if(media < 6)         
		          System.out.println("Você tem mais ma chance. Poderá fazer a P3 ");    
		        else        
	 	         System.out.println("Você foi aprovado!");    
	              }  


	}

}
