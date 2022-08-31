package br.edu.fatec.exercicio1;

public class Carro {
    private String marca;
    private String cor;
    private String combustivel;
    private String modelo;
    private Integer quilometragem;

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCombustivel() {
        return combustivel;
    }

    public void setCombustivel(String combustivel) {
        this.combustivel = combustivel;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public Integer getQuilometragem() {
        return quilometragem;
    }

    public void setQuilometragem(Integer quilometragem) {
        this.quilometragem = quilometragem;
    }

    public void mostrarDados() {
        System.out.println("");
		System.out.println("Marca: " + getMarca());
        System.out.println("Cor: " + getCor());
		System.out.println("Tipo de Combustível: " + getCombustivel());
		System.out.println("Modelo: " + getModelo());
        System.out.println("Quilometros rodados: " + getQuilometragem() + "km");
	}

    public void ligar(){
        System.out.println("Carro ligado!");
    }

    public void desligar(){
        System.out.println("Carro desligado!");
    }

}
