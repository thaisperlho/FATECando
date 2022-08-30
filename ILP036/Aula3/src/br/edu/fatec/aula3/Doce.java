package br.edu.fatec.aula3;

public class Doce {
	private Double preco;
	private String nome;
	private String tamanho;
	
	public Doce() {
		this.tamanho = "pequeno";
	}
	
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTamanho() {
		return tamanho;
	}
	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}
	
}
