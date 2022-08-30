package br.edu.fatec.aula3;

public class Confeitaria {
	private Doce listaDeDoces[] = new Doce[10];
	private int totalDoces = 0;
	
	public void cadastraDoce(Doce novoDoce) {
		if(totalDoces <  listaDeDoces.length) {
			listaDeDoces[totalDoces] = novoDoce;
			totalDoces++;
		}
		else
			System.out.println("A lista esta cheia!");
	}
	
	public void imprimeDoces() {
		if(totalDoces>0) {
			for(int i = 0; i <totalDoces; i++) {
				System.out.println("Nome: " + listaDeDoces[i].getNome());
				System.out.println("Tamanho: " + listaDeDoces[i].getTamanho());
				System.out.println("Preço: "+ listaDeDoces[i].getPreco());
			}
		}else
			System.out.println("Lista vazia!");
	}

}
