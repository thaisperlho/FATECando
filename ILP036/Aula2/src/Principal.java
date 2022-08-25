import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		Scanner input =  new Scanner(System.in);
		Circulo cir = new Circulo();
		Triangulo tri = new Triangulo();
		Quadrado qua = new Quadrado();
		
		//circle
		System.out.println("Informe cor");
		cir.setCor(input.next());
		System.out.println("Informe diâmetro");
		cir.setDiametro(input.nextInt());
		cir.mostrarDados();
		
		//triangle
		System.out.println("Informe cor");
		tri.setCor(input.next());
		System.out.println("Informe altura");
		tri.setAltura(input.nextInt());
		System.out.println("Informe base");
		tri.setBase(input.nextInt());
		tri.mostrarDados();
		
		//square
		System.out.println("Informe cor");
		qua.setCor(input.next());
		System.out.println("Informe lado");
		qua.setLado(input.nextInt());
		qua.mostrarDados();
		
	}

}
