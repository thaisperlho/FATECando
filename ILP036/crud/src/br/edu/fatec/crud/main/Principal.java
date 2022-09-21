package br.edu.fatec.crud.main;

import br.edu.fatec.crud.model.Ong;
import br.edu.fatec.crud.model.Pets;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Ong ong = new Ong();
        Pets pet = new Pets();
        Scanner input = new Scanner(System.in);

        System.out.println("Cadastre um pet na sua ong");
        System.out.println("nome do pet");
        pet.setName(input.next());
        System.out.println("Idade do pet");
        pet.setAge(input.nextInt());
        System.out.println("Sexo do pet");
        pet.setGender(input.next());
        ong.addPet(pet);
        ong.showPets();



    }
}
