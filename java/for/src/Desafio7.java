import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

//Você construirá um boletim semestral. Para isso, construa um programa que solicite
//as 4 notas de um aluno para as disciplinas de Matemática, História, Português e
//Geografia. Em seguida, pergunte qual o peso de cada uma dessas notas. Em seguida,
//calcule a média ponderada dessas notas. Ao final, deve-se exibir de maneira
//organizada a disciplina, as notas tiradas e a média final conquistada pelo aluno.

public class Desafio7 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que cálcula a média ponderada por disciplina de um aluno em um semestre;");

        HashMap<Disciplina, List<Nota>> notasDisciplina = new HashMap<Disciplina, List<Nota>>();
        HashMap<Disciplina, Double> mediaPonderadaDisciplina = new HashMap();

        for (Disciplina value : Disciplina.values()) {

            List<Nota> notas = new ArrayList<Nota>();

            for (int i = 1; i <= 4; i++) {

                try {

                    Integer peso;
                    Double nota;

                    System.out.println(" Informe a " + i + "° nota de " + value.toString() + " ");
                    nota = validarValores(scanner.nextDouble());

                    System.out.println(" Informe o peso da nota Ex: (1, 2, 6) -> ");
                    peso = validarValores(scanner.nextInt());

                    notas.add(new Nota(nota, peso));

                } catch (Exception e) {
                    printMensagens(e.getMessage());
                    i--;
                }

            }

            notasDisciplina.put(value, notas);

        }

        notasDisciplina.forEach((disciplina, notas) -> {

            Integer quant = notas.stream().mapToInt(nota -> nota.getPeso()).sum();
            Double total = notas.stream().mapToDouble(nota -> nota.getValor() * nota.getPeso()).sum();

            mediaPonderadaDisciplina.put(disciplina, (total / quant));

        });

        printMensagens(" Média ponderada História -> " + mediaPonderadaDisciplina.get(Disciplina.HISTORIA),
                " Média ponderada Matemática -> " + mediaPonderadaDisciplina.get(Disciplina.MATEMATICA),
                " Média ponderada Português -> " + mediaPonderadaDisciplina.get(Disciplina.PORTUGUES),
                " Média ponderada Geografia -> " + mediaPonderadaDisciplina.get(Disciplina.GEOGRAFIA));


    }

    private static Double validarValores(Double v) throws Exception {

        if (v < 0 || v > 10) throw new Exception(" Informe um valor válido");

        return v;
    }

    private static Integer validarValores(Integer v) throws Exception {

        if (v <= 0) throw new Exception(" Informe um valor válido");

        return v;

    }

    public static class Nota {

        private Double valor;
        private Integer peso;

        Nota(Double valor, Integer peso) {
            this.valor = valor;
            this.peso = peso;
        }

        Nota() {

        }

        public Double getValor() {
            return valor;
        }

        public void setValor(Double valor) {
            this.valor = valor;
        }

        public Integer getPeso() {
            return peso;
        }

        public void setPeso(Integer peso) {
            this.peso = peso;
        }
    }

    public enum Disciplina {
        HISTORIA("História"),
        MATEMATICA("Matemática"),
        PORTUGUES("Português"),
        GEOGRAFIA("Geografia");

        private String descricao;

        Disciplina(String descricao) {
            this.descricao = descricao;
        }

        @Override
        public String toString() {
            return this.descricao;
        }

    }

}
