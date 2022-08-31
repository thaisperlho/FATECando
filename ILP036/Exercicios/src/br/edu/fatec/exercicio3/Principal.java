package br.edu.fatec.exercicio3;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Padaria padaria = new Padaria();
        
        System.out.println();
        System.out.println("Informe a quantidade dos produtos da Padaria");
        System.out.println("Quantidade de Pães: ");
        padaria.setQtdePaes(input.nextInt());
        System.out.println("Quantidade de Sonhos: ");
        padaria.setQtdeSonhos(input.nextInt());
        System.out.println("Quantidade de Leite: ");
        padaria.setQtdeLeite(input.nextInt());
        
        padaria.verificaQtdeMaior();


    }
}
