package br.edu.fatec.execicio1;

public class Paralelogramo {
    private double a;
    private double h;
    private double angulo;

    public Paralelogramo(double a, double h, double angulo) {
        this.a = a;
        this.h = h;
        this.angulo = angulo;
    }

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getH() {
        return h;
    }

    public void setH(double h) {
        this.h = h;
    }

    public double getAngulo() {
        return angulo;
    }

    public void setAngulo(double angulo) {
        this.angulo = angulo;
    }
    public void allSet(double angulo, double a,double h){
        this.setAngulo(angulo);
        this.setA(a);
        this.setH(h);
    }

    @Override
    public String toString() {
        return "Forma:" +
                " base: " + a +
                " altura: " + h +
                " angulo: " + angulo +
                '}';
    }

    public double calcularArea(){
        if (h > 0){
            return a * h;
        }
        else
            return a * a;
    }
    public double calcularPerimetro(){
        if (h > 0){
            return 2 * ( h + a);
        }
        else
            return 4 * a;
    }

}
