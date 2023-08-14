import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

//Foi conduzida uma pesquisa com "N" indivíduos sobre suas opiniões em relação à
//pré-estreia de um filme. Os dados coletados incluíram sexo, idade e uma nota de 0 a
//10 referente à opinião sobre o filme. As perguntas foram feitas repetidamente até que
//todas as pessoas disponíveis tivessem respondido.
//Com base nos resultados da pesquisa, podemos calcular e apresentar as seguintes
//informações:
//● A média de idade das pessoas que responderam ao questionário;
//● Lista de pessoas que deram nota igual a 10;
//● A quantidade de homens cujas opiniões sobre o filme foram inferiores a 5;
//● A quantidade de mulheres cujas opiniões sobre o filme foram inferiores a 5;
//● A quantidade de homens cujas opiniões sobre o filme foram superiores a 7;
//● A quantidade de mulheres cujas opiniões sobre o filme foram superiores a 7;
//● Média das notas informadas.
//Essas informações podem ajudar a compreender melhor a recepção do público em
//relação ao filme e a orientar decisões futuras da equipe responsável pela sua
//promoção.
//Obs.: não esqueça de validar se a nota está entre 0 e 10.
public class Desafio8 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe informações de um grupo de pessoas agrupa e exibe ao final... ");

        Boolean repeat = false;

        do {

            String sexo;
            String nome;
            Integer idade;
            Double nota;

            System.out.println(" Informe o sexo da pessoa Ex(M -> masculino, F -> feminino) -> ");
            sexo = scanner.nextLine();

            if (Arrays.stream(Sexo.values()).anyMatch(s -> s.toString().equalsIgnoreCase(sexo))) {

                Sexo s = Arrays.stream(Sexo.values()).filter(se -> se.toString().equalsIgnoreCase(sexo)).findFirst().orElse(null);

                System.out.println("Informe nome -> ");
                nome = scanner.nextLine();

                System.out.println("Informe a nota (de 0 a 10)-> ");
                nota = scanner.nextDouble();
                scanner.nextLine();

                if (nota <= 10 && nota >= 0) {

                    System.out.println("Informe a idade da pessoa -> ");
                    idade = scanner.nextInt();
                    scanner.nextLine();

                    Pessoa.addValues(s, idade, nota, nome);

                    printMsg(" Deseja finalizar o programa ? Caso sim, digite Finalizar -> ");
                    String finalize = scanner.nextLine();

                    repeat = !finalize.equals("Finalizar");

                } else {
                    printMsg(" Informe uma nota de 0 a 10; ");
                    repeat = true;
                }

            } else {
                printMsg(" Informe um sexo válido MASCULINO(M), FEMININO(F)");
                repeat = true;
            }

        } while (repeat);

        printMensagens(" Média idade -> " + (Pessoa.quantidade > 0d ? Pessoa.totalIdade / Pessoa.quantidade : 0d ),
                " Pessoas avaliação 10 -> " + Pessoa.nomesNotas10.stream().collect(Collectors.joining(", ")),
                " Homens opinião inferior a 5 -> " + Pessoa.quantidadeMascNotaInferio5,
                " Mulheres opinião inferior a 5 -> " + Pessoa.quantidadeFemNotaInferio5,
                " Homens opinião superior a 7 -> " + Pessoa.quantidadeMascNotaSuperior7,
                " Mulheres opinião superior a 7 -> " + Pessoa.quantidadeFemNotaSuperior7,
                " Média notas informadas -> " + (Pessoa.quantidade != 0 ? (Pessoa.notas / Pessoa.quantidade) : 0d)
        );

    }

    public static class Pessoa {
        private static Integer quantidadeMasc = 0;
        private static Integer quantidadeFem = 0;
        private static Integer quantidade = 0;
        private static Integer totalIdade = 0;
        private static Integer notas10 = 0;
        private static List<String> nomesNotas10 = new ArrayList<String>();
        private static Double notas = 0d;
        private static Integer quantidadeMascNotaInferio5 = 0;
        private static Integer quantidadeFemNotaInferio5 = 0;
        private static Integer quantidadeMascNotaSuperior7 = 0;
        private static Integer quantidadeFemNotaSuperior7 = 0;



        public static void addValues(Sexo sexo, Integer idade, Double nota, String nome) {

            totalIdade += idade;
            quantidade++;

            if (nota == 10) {
                notas10++;
                nomesNotas10.add(nome);
            }

            if (Sexo.MASCULINO.equals(sexo)) {

                if (nota < 5) {
                    quantidadeMascNotaInferio5++;
                } else if (nota > 7) {
                    quantidadeMascNotaSuperior7++;
                }

            } else {

                if (nota < 5) {
                    quantidadeFemNotaInferio5++;
                } else if (nota > 7) {
                    quantidadeFemNotaSuperior7++;
                }

            }

        }

    }

    public enum Sexo {

        MASCULINO("M"), FEMININO("F");

        public String desc;

        Sexo(String desc) {
            this.desc = desc;
        }

        @Override
        public String toString() {
            return this.desc;
        }

    }

}
