package desafios.desafio5;


import java.util.ArrayList;
import java.util.List;

public class Aluno extends Desafio5 {
    public List<Nota> notas = new ArrayList<>();
    public Double mediaPonderada = new Double(0);
    public Integer quantNotas = 3;

    public String nome;

    Aluno() {
        populaValores();
    }

    private void populaValores() {

        System.out.println(" Informe o nome do aluno -> ");
        this.nome = scanner.next();

        for (Integer i = 0; i < quantNotas; i++) {

            try {
                notas.add(new Nota().populaNota(i + 1));
            } catch (Exception e) {
                printMsg(e.getMessage());
                i--;
            }

        }

        Double quant = notas.stream().mapToDouble(n -> n.getPeso()).sum();
        Double total = notas.stream().mapToDouble(n -> n.getNota() * n.getPeso()).sum();
        this.mediaPonderada = total / quant;

    }

    public List<Nota> getNotas() {
        return notas;
    }

    public void setNotas(List<Nota> notas) {
        this.notas = notas;
    }

    public Double getMediaPonderada() {
        return mediaPonderada;
    }

    public void setMediaPonderada(Double mediaPonderada) {
        this.mediaPonderada = mediaPonderada;
    }

    public Integer getQuantNotas() {
        return quantNotas;
    }

    public void setQuantNotas(Integer quantNotas) {
        this.quantNotas = quantNotas;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

}
