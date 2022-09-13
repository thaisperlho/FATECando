package br.edu.fatec.aula4;
public class Livro extends Tipo
{
    private double preco;
    private String titulo;

    /**
     * Construtor para objetos da classe Livro
     */
    public Livro()
    {
        // inicializa variáveis de instância
        this.preco = 100;
    }
    
    private String getTitulo(){
        return this.titulo;
    }
    
    private double getPreco(){
        return this.preco;
    }
 
    public void  setTitulo(String titulo){
        this.titulo = titulo;
    }
    
    public void  setPreco(double preco){
        this.preco = preco;
    }
    
    public void imprimir(){
        super.imprimir();
        System.out.println("Titulo: " + getTitulo());
        System.out.println("Preço: " + getPreco());
        System.out.println();
    }
}
