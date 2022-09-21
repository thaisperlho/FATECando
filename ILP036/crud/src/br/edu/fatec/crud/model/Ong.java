package br.edu.fatec.crud.model;

public class Ong {


    private Pets[] pets = new Pets[10];

    public void setPets(Pets[] pets) {
        this.pets = pets;
    }

    public void addPet(Pets pet) {
        for (int i = 0; i < this.pets.length; i++) {
            if (this.pets[i] == null) {
                this.pets[i] = pet;
                return;
            }
        }
        System.out.println("Pets está cheio");
    }

    public void showPets() {
        for (Pets pet : this.pets) {
            if (pet != null) {
                System.out.println("Nome: " + pet.getName());
                System.out.println("Idade: " + pet.getAge());
                System.out.println("Sexo: " + pet.getGender());
            }
        }

    }

    public void removePet(int id) {
        Pets[] newPets = new Pets[10];
        for (int i = 0; i < this.pets.length; i++) {
            if (this.pets[i].getId() != id) {
                int total = newPets.length;
                newPets[total] = this.pets[i];
            }
        }
        this.pets = newPets;
    }

}
