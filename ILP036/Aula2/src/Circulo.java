
public class Circulo {
	private String cor;
	private int diametro;
	
	public void setCor(String cor) {
		this.cor = cor;
	}
	public String getCor() {
		return this.cor;
	}
	
	public void setDiametro(int diametro) {
		this.diametro = diametro;
	}
	public int getDiametro() {
		return this.diametro;
	}
	
	public double calcularArea() {
		return Math.PI * Math.pow(diametro/2, 2);
	}
	public void mostrarDados() {
		System.out.println("Cor do Circulo: " + getCor());
		System.out.println("Diâmetro do circulo: " + getDiametro());
		System.out.println("Área do circulo: " + calcularArea());
		
	}
	
}
