package br.edu.fatec.execicio1;

public class Retangulo extends Paralelogramo{

    public Retangulo(double a, double h, double angulo) {
        super(a,h,angulo);

    }
    public void allSet(double angulo, double a,double h){
        this.setAngulo(angulo);
        this.setA(a);
        this.setH(h);
    }

    public String toString() {
        return "Forma: " +
                " lado1: " + getA() +
                " lado2: " + getH();
    }
}
