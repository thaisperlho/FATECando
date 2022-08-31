package br.edu.fatec.exercicio2;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Biblioteca biblioteca = new Biblioteca();
        Livro novoLivro = new Livro();

        System.out.println();
        System.out.println("Vamos cadastrar um livro na biblioteca!");
        System.out.println();
        System.out.println("Titulo: ");
        novoLivro.setTitulo(input.next());
        System.out.println("Autor: ");
        novoLivro.setAutor(input.next());
        System.out.println("Editora: ");
        novoLivro.setEditora(input.next());
        System.out.println("Ano: ");
        novoLivro.setAno(input.nextInt());
        System.out.println("Edição: ");
        novoLivro.setEdicao(input.next());
        System.out.println("Volume: ");
        novoLivro.setVolume(input.next());
        biblioteca.cadastraLivro(novoLivro);
        biblioteca.imprimeLivro(novoLivro);    
    }
}
