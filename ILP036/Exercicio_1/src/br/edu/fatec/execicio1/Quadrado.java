package br.edu.fatec.execicio1;

public class Quadrado extends Paralelogramo{

    public Quadrado(double a, double h, double angulo) {
        super(a,h,angulo);
    }
    public void allSet(double angulo, double lado){
        this.setAngulo(angulo);
        this.setA(lado);
    }

    @Override
    public String toString() {
        return "Forma: " +
                " lado: " + getA();
    }
}
