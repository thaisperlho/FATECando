package br.edu.fatec.exercicio1;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        int escolha;
        Carro car = new Carro();
        Scanner input =  new Scanner(System.in);

        System.out.println("Informe modelo do carro");
        car.setModelo(input.next());
        System.out.println("Informe marca");
        car.setMarca(input.next());
        System.out.println("Informe cor");
        car.setCor(input.next());
        System.out.println("Informe tipo de combustível");
        car.setCombustivel(input.next());
        System.out.println("Informe quantidade de quilometros rodados");
        car.setQuilometragem(input.nextInt());
        car.mostrarDados();

        System.out.println("");
        System.out.println("Escolha entre \n 1-Ligar o carro \n 2-Desligar o carro");
        escolha = input.nextInt();
        switch(escolha){
        case 1:
            car.ligar();
            break;
        case 2:
            car.desligar();
            break;
        default:
            System.out.println("Função inválida!");
        }
        input.close();
    }
}
