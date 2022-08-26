import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		int escolha;
		Scanner input =  new Scanner(System.in);
		Circulo cir = new Circulo();
		Triangulo tri = new Triangulo();
		Quadrado qua = new Quadrado();
		System.out.println("Informe qual a área que deseja calcular \n 1-Quadrado \n 2-Triângulo \n 3-Circulo");
		escolha = input.nextInt();
		switch(escolha){
		case 1:
			//square
			System.out.println("Informe cor do Quadrado");
			qua.setCor(input.next());
			System.out.println("Informe lado");
			qua.setLado(input.nextInt());
			qua.mostrarDados();
			break;
		case 2:	
			//triangle
			System.out.println("Informe cor do Triângulo");
			tri.setCor(input.next());
			System.out.println("Informe altura");
			tri.setAltura(input.nextInt());
			System.out.println("Informe base");
			tri.setBase(input.nextInt());
			tri.mostrarDados();
			break;
		case 3:
			//circle
			System.out.println("Informe cor do Circulo");
			cir.setCor(input.next());
			System.out.println("Informe diâmetro");
			cir.setDiametro(input.nextInt());
			cir.mostrarDados();
			break;
		default:
			System.out.println("Você escolheu uma opção incorreta");
		}		
	}
}
