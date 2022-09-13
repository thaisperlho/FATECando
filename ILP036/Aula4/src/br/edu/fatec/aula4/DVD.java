package br.edu.fatec.aula4;
/**
 * Escreva uma descrição da classe DVD aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class DVD extends Tipo
{
    private int duracao;

    private int getDuracao(){
        return this.duracao;
    }
 
    public void  setDuracao(int duracao){
        this.duracao = duracao;
    }
    
    public void imprimir(){
        super.imprimir();
        System.out.println("Duração: " + getDuracao());
        System.out.println();
    }
}
