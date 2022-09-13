package br.edu.fatec.aula4;
public class Biblioteca
{
    // variáveis de instância - substitua o exemplo abaixo pelo seu próprio
    private int total = 0;
    private Tipo [] estante  = new Tipo[10];
 

    public void adicionarItem(Tipo novoTipo) {
	if(total < estante.length) {
            estante[total] = novoTipo;
            total++;
	}
	else
        	System.out.println("A estante esta cheia!");
    }
	
    public void imprimeItem() {
	for(int i = 0; i <total; i++) {
            estante[i].imprimir();
	}
    }
}
