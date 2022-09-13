package br.edu.fatec.aula5;

import java.util.Random;
public class NaveEspacial
{
    // atributos
    private int campoDeForca;
    private String nomeDaNave;
    private int tiro;
    private int velocidade;
    private Random gerador = new Random();
    /**
     * Construtor para objetos da classe NaveEspacial
     */
    public NaveEspacial(String nomeDaNave)
    {
        this.nomeDaNave = nomeDaNave;
        this.campoDeForca = 20;
    }
    
    public int sorteNoCombate()
    {
        return gerador.nextInt(4);
    }
    public void danoEscudo(int dano)
    {
    	
       this.campoDeForca = Math.abs(campoDeForca - dano);
        
       System.out.println("A Nave " + this.nomeDaNave + " recebeu um dano de " + dano + ". Escudos diminuindo");
       System.out.println("Escudo atual com " + campoDeForca + " pontos!");
       if(campoDeForca <=0)
        System.out.println("A Nave " + this.nomeDaNave +" foi destruida! ");
    }
    public void combaterNaveInimiga(NaveEspacial naveInimiga){ 
        int poderTiro;
        while(campoDeForca>0 && naveInimiga.campoDeForca>0){
        	velocidade = gerador.nextInt(11);
        	naveInimiga.velocidade = (gerador.nextInt(10)+ 1);
        	tiro = (gerador.nextInt(5) + 1);
        	naveInimiga.tiro = (gerador.nextInt(5) + 1);

            if(sorteNoCombate() >= naveInimiga.sorteNoCombate()){
                poderTiro = Math.abs(this.tiro - naveInimiga.tiro);
            	int diferenca = naveInimiga.velocidade - velocidade;
                if(diferenca >= 4) {
                	System.out.println("A Nave " + naveInimiga.nomeDaNave + " esquivou!!!");
                	
                }else
                	naveInimiga.danoEscudo(poderTiro);
            }
            else{
                poderTiro = Math.abs(this.tiro - naveInimiga.tiro);
            	int diferenca = velocidade - naveInimiga.velocidade;
                if(diferenca >= 4) {
                	System.out.println("A Nave " + nomeDaNave + " esquivou!!!");
                	
                }else
                	danoEscudo(poderTiro); 
            }
        }
           
    }
    
}
