package br.edu.fatec.execicio1;

public class TesteFormas {
    public static void main(String[] args) {
        Paralelogramo paralelogramo = new Paralelogramo(4.0f,1.0f,0.7853981633974483f);
        Retangulo retangulo = new Retangulo(3.0f,2.0f, 1.5707963267948966f);
        Quadrado quadrado = new Quadrado(1.0f, 0f, 1.5707963267948966f);
        Paralelogramo  [] forma = new Paralelogramo[3];

        forma[0] = paralelogramo;
        forma[1] = retangulo;
        forma[2] = quadrado;


        for (int i=0; i < 3; i++){
            System.out.println(forma[i].toString());
            System.out.println("Angulo: " + forma[i].getAngulo() + " radianos");
            System.out.println("Area: " + forma[i].calcularArea());
            System.out.println("Perímetro: " + forma[i].calcularPerimetro() +"\n");
        }

    }
}
