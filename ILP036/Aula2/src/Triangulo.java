
public class Triangulo {
	private String cor;
	private int base, altura;
	
	public void setCor(String cor) {
		this.cor = cor;
	}
	public String getCor() {
		return this.cor;
	}
	public void setBase(int base) {
		this.base = base;
	}
	public int getBase() {
		return this.base;
	}
	public void setAltura(int altura) {
		this.altura = altura;
	}
	public int getAltura() {
		return this.altura;
	}
	public double calcularArea() {
		return (base + altura)/2;
	}
	public void mostrarDados() {
		System.out.println("Cor do Triângulo: " + getCor());
		System.out.println("Base do Triângulo: " + getBase());
		System.out.println("Altura do Triângulo: " + getAltura());
		System.out.println("Área do Triângulo: " + calcularArea());
		
	}

}
