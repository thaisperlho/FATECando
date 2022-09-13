package br.edu.fatec.aula4;
import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		Scanner input =  new Scanner(System.in);
		Biblioteca biblioteca = new Biblioteca();
		Livro novoLivro = new Livro();
		DVD novoDVD = new DVD();
		int opcao=0;
		System.out.println("Digite \n 1: Cadastrar Livro \ud83d\udcda \n 2: Cadastrar DVD \ud83d\udcc0 \n 3: Imprimir \ud83d\udda8 \n 4: Encerrar ");
		opcao = input.nextInt();
		while(opcao!=4) {
			switch (opcao) {
			case 1:
				System.out.println("Titulo: ");
				novoLivro.setTitulo(input.next());
				System.out.println("Autor: ");
				novoLivro.setAutor(input.next());
				System.out.println("Localização: ");
				novoLivro.setLocalizacao(input.next());
				biblioteca.adicionarItem(novoLivro);
				break;
			case 2:
				System.out.println("Autor: ");
				novoDVD.setAutor(input.next());
				System.out.println("Localização: ");
				novoDVD.setLocalizacao(input.next());
				System.out.println("Duração: ");
				novoDVD.setDuracao(input.nextInt());
				biblioteca.adicionarItem(novoDVD);
				break;
			case 3:
				biblioteca.imprimeItem();
				break;
			default:
				System.out.println("Opção inválida \ud83d\udc7e !");
			}
			System.out.println("Digite \n 1: Cadastrar Livro \ud83d\udcda \n 2: Cadastrar DVD \ud83d\udcc0 \n 3: Imprimir \ud83d\udda8 \n 4: Encerrar ");
			opcao = input.nextInt();
		}

	}

}
