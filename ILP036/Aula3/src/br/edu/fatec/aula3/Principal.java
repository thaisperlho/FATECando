package br.edu.fatec.aula3;

import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		Scanner input =  new Scanner(System.in);
		Confeitaria confeitaria = new Confeitaria();
		Doce novoDoce = new Doce();
		int opcao=0;
		System.out.println("Digite \n 1: Cadastrar Doce \n 2: Imprimir \n 3: Sair");
		opcao = input.nextInt();
		while(opcao!=3) {
			switch (opcao) {
			case 1:
				System.out.println("Informe nome do doce: ");
				novoDoce.setNome(input.next());
				System.out.println("Informe preço do Doce: ");
				novoDoce.setPreco(input.nextDouble());
				confeitaria.cadastraDoce(novoDoce);
				break;
			case 2:
				confeitaria.imprimeDoces();
				break;
			default:
				System.out.println("Opção inválida!");
			}
			System.out.println("Digite 1: Cadastrar Doce \n 2: Imprimir \n 3:Sair");
			opcao = input.nextInt();
		}
		input.close();
	}
}
