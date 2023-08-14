package desafios.desafio5;

import desafios.Desafio;

public class Nota extends Desafio {

    public Double nota;

    public Double peso;

    Nota() throws Exception {}

    public void setNota(Double nota) throws Exception {
        if (nota < 0 || nota > 10) throw new Exception(" Nota inválida! Informe um valor de 0 a 10! ");

        this.nota = nota;
    }

    public Double getNota() {
        return nota;
    }

    public Double getPeso() {
        return peso;
    }

    public void setPeso(Double peso) {
        this.peso = peso;
    }

    public Nota populaNota(Integer posicao) throws Exception {

        System.out.println(" Informe a " + posicao + "° nota -> ");
        setNota(scanner.nextDouble());

        System.out.println(" Informe o peso da nota -> ");
        this.peso = scanner.nextDouble();

        return this;

    }
}
