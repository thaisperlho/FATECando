package br.edu.fatec.exercicio3;

public class Padaria {
    private Integer qtdePaes;
    private Integer qtdeSonhos;
    private Integer qtdeLeite;

    public Integer getQtdePaes() {
        return qtdePaes;
    }

    public void setQtdePaes(Integer qtdePaes) {
        this.qtdePaes = qtdePaes;
    }

    public Integer getQtdeSonhos() {
        return qtdeSonhos;
    }

    public void setQtdeSonhos(Integer qtdeSonhos) {
        this.qtdeSonhos = qtdeSonhos;
    }

    public Integer getQtdeLeite() {
        return qtdeLeite;
    }

    public void setQtdeLeite(Integer qtdeLeite) {
        this.qtdeLeite = qtdeLeite;
    }

    public void verificaQtdeMaior() {
        System.out.println();
        System.out.println("Verificando qual produto tem maior quantidade Pães X Sonhos");
        System.out.println();
        if(qtdePaes > qtdeSonhos){
            System.out.println("A quantidade de Pães é maior!");
            System.out.println("Pães: " + qtdePaes + "| Sonhos: " + qtdeSonhos);
        }else if(qtdePaes < qtdeSonhos){
            System.out.println("A quantidade de Sonhos é maior!");
            System.out.println("Sonhos: " + qtdeSonhos + "| Pães: " + qtdePaes);
        }
        else{
            System.out.println("Os produtos tem a mesma quantidade");
            System.out.println("Pães: " + qtdePaes + "| Sonhos: " + qtdeSonhos);
        }

    }
}
