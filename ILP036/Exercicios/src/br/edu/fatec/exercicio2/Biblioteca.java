package br.edu.fatec.exercicio2;

public class Biblioteca {
    Livro[] listaLivros = new Livro[1];

    public void cadastraLivro(Livro novoLivro){
            listaLivros[0] = novoLivro;
    }
    public Void imprimeLivro(Livro livro) {
        System.out.println();
        System.out.println("Título: " + livro.getTitulo());
        System.out.println("Autor: " + livro.getAutor());
        System.out.println("Editora: "+ livro.getEditora());
        System.out.println("Ano: " + livro.getAno());
        System.out.println("Edição: " + livro.getEdicao());
        System.out.println("Volume: "+ livro.getVolume());
        return null;
    }
}

    

