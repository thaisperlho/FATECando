package br.edu.fatec.aula4;

public abstract class Tipo
{
    private String localizacao;
    private String autor;

    private String getLocalizacao(){
        return this.localizacao;
    }
    
    private String getAutor(){
        return this.autor;
    }
 
    public void  setLocalizacao(String localizacao){
        this.localizacao = localizacao;
    }
    
    public void  setAutor(String autor){
        this.autor = autor;
    }
    
    public void imprimir(){
        System.out.println("Localização: " + getLocalizacao());
        System.out.println("Autor: " + getAutor());
    }
}
