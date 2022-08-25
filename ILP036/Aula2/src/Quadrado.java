
public class Quadrado {
	private String cor;
	private int lado;
	
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public int getLado() {
		return lado;
	}
	public void setLado(int lado) {
		this.lado = lado;
	}
	public double calcularArea() {
		return lado * lado;
	}
	public void mostrarDados() {
		System.out.println("Cor do Quadrado: " + getCor());
		System.out.println("Lado do Quadrado: " + getLado());
		System.out.println("Área do Quadrado: " + calcularArea());
		
	}

}
