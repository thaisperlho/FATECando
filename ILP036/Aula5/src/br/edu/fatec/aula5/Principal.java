package br.edu.fatec.aula5;
import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		
		Scanner input =  new Scanner(System.in);
		System.out.println("Informe o nome da primeira nave");
		NaveEspacial nave = new NaveEspacial(input.next());
		System.out.println("Informe o nome da segunda nave");
		NaveEspacial nave2 = new NaveEspacial(input.next());
		
		nave.combaterNaveInimiga(nave2);
		input.close();
	}

}
