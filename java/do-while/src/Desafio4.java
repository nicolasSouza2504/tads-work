//Você deverá desenvolver um algoritmo que solicite a idade, o gênero e o salário de
//um grupo de pessoas. Para encerrar o programa, o usuário deve digitar "Finalizar".
//Certifique-se de validar para que o usuário digite exatamente "Finalizar". Ao término
//da execução do programa, será apresentado ao usuário as seguintes informações:● A média de idade geral;
//● A média de idade de pessoas do gênero feminino;
//● A média de idade de pessoas do gênero masculino;
//● A média salarial geral;
//● A média salarial do gênero feminino;
//● A média salarial do gênero masculino.
//● O maior salário;
//● O menor salário.

import java.util.Arrays;

public class Desafio4 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe informações de um grupo de pessoas agrupa e exibe ao final... ");

        Boolean repeat = false;

        do {

            String sexo;
            Double salario;
            Integer idade;

            System.out.println(" Informe o sexo da pessoa Ex(M -> masculino, F -> feminino) -> ");
            sexo = scanner.nextLine();

            if (Arrays.stream(Sexo.values()).anyMatch(s -> s.toString().equalsIgnoreCase(sexo))) {

                Sexo s = Arrays.stream(Sexo.values()).filter(se -> se.toString().equalsIgnoreCase(sexo)).findFirst().orElse(null);

                System.out.println("Informe o salario da pessoa -> ");
                salario = scanner.nextDouble();

                System.out.println("Informe a idade da pessoa -> ");
                idade = scanner.nextInt();
                scanner.nextLine();

                Pessoa.addValues(s, idade, salario);

                printMsg(" Deseja finalizar o programa ? Caso sim, digite Finalizar -> ");
                String finalize = scanner.nextLine();

                repeat = !finalize.equals("Finalizar");

            } else {
                printMsg(" Informe um sexo válido MASCULINO(M), FEMININO(F)");
                repeat = true;
            }

        } while (repeat);

        printMensagens(" Média idade feminino -> " + (Pessoa.quantidadeFem != 0d ? Pessoa.idadeFeminino / Pessoa.quantidadeFem : 0d),
                       " Média idade masculino -> " + (Pessoa.quantidadeMasc != 0d ? Pessoa.idadeMasc / Pessoa.quantidadeMasc : 0d),
                       " Média salarial geral -> " + (Pessoa.salarioTotalFem + Pessoa.salarioTotalMasc) / (Pessoa.quantidadeFem + Pessoa.quantidadeMasc),
                       " Média salarial feminina -> " + (Pessoa.quantidadeFem != 0d ? Pessoa.salarioTotalFem / Pessoa.quantidadeFem : 0d),
                       " Média salarial masculina -> " + (Pessoa.quantidadeMasc != 0d ? Pessoa.salarioTotalMasc / Pessoa.quantidadeMasc : 0d),
                       " Menor salário -> " + Pessoa.menorSalario,
                       " Maior salário -> " + Pessoa.maiorSalario);

    }

    public static class Pessoa {
        private static Integer quantidadeMasc = 0;
        private static Integer quantidadeFem = 0;
        private static Integer idadeFeminino = 0;
        private static Integer idadeMasc = 0;

        private static Double salarioTotalFem = 0d;
        private static Double salarioTotalMasc = 0d;
        private static Double maiorSalario = 0d;
        private static Double menorSalario = 0d;

        public static void addValues(Sexo sexo, Integer idade, Double salario) {

            if (menorSalario > salario || menorSalario == 0d) {
                menorSalario = salario;
            }

            if (maiorSalario < salario || maiorSalario == 0d) {
                maiorSalario = salario;
            }

            if (sexo != null && sexo.equals(Sexo.MASCULINO)) {

                quantidadeMasc++;
                salarioTotalMasc+= salario;
                idadeMasc += idade;

            } else {

                quantidadeFem ++;
                salarioTotalFem += salario;
                idadeFeminino += idade;

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

