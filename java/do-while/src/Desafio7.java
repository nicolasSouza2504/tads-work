//A prefeitura de "Araquachussets" planeja conduzir uma pesquisa entre seus cidadãos,
//a fim de coletar informações sobre seus nomes, idades, salários e número de filhos.
//Para alcançar esse objetivo, sugiro a criação de um formulário online, que possa ser
//preenchido pelos moradores da cidade.
//Uma vez que a pesquisa tenha sido concluída, podemos utilizar os dados coletados
//para gerar algumas informações estatísticas relevantes, tais como:
//● A média de salário da população, que pode ser calculada dividindo-se a soma
//de todos os salários pelo número total de respondentes.
// ● A média do número de filhos, que pode ser calculada dividindo-se a soma de
//todos os filhos pelo número total de respondentes.
//● O maior salário entre os habitantes, que pode ser identificado através da
//comparação dos salários individuais.
//● Uma lista com os nomes das pessoas cujo salário é inferior a R$ 1000,00. Essa
//lista pode ser gerada filtrando-se os respondentes cujo salário é menor que
//esse valor e extraindo seus nomes.
//● A média de idade da população, que pode ser calculada da mesma forma que
//a média de salário e a média de número de filhos.
//Com essas informações em mãos, a prefeitura de "Araquachussets" poderá ter uma
//melhor compreensão da situação econômica e demográfica de sua cidade, o que pode
//ajudá-la a planejar políticas públicas mais eficazes.

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Desafio7 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe informações de um grupo de pessoas agrupa e exibe ao final... ");

        Boolean repeat = false;

        do {

            Integer idade;
            String nome;
            Double salario;
            Integer filhos;

            System.out.println(" Informe o nome -> ");
            nome = scanner.nextLine();

            System.out.println("Informe o salario do cidadão -> ");
            salario = scanner.nextDouble();

            System.out.println("Informe a quantidade de filhos -> ");
            filhos = scanner.nextInt();

            System.out.println(" Informe a idade -> ");
            idade = scanner.nextInt();
            scanner.nextLine();

            Cidadao.addValues(idade, nome, salario, filhos);

            printMsg(" Deseja finalizar o programa ? Caso sim, digite Finalizar -> ");
            String finalize = scanner.nextLine();

            repeat = !finalize.equals("Finalizar");



        } while (repeat);

        printMensagens(" Média de salários população -> " + (Cidadao.quantidadeCidadaos != 0 ? Cidadao.salarioTotal / Cidadao.quantidadeCidadaos : 0d),
                       " Média filhos população -> " + (Cidadao.quantidadeCidadaos != 0 ? Cidadao.numeroFilhos / Cidadao.quantidadeCidadaos : 0d),
                       " Pessoas com salário menor que 1000 -> " + Cidadao.nomesSalarioMenor.stream().collect(Collectors.joining(" ,")),
                       " Média de idade população -> " + (Cidadao.quantidadeCidadaos != 0 ? Cidadao.totalIdade / Cidadao.quantidadeCidadaos : 0d));

    }

    public static class Cidadao {

        private static Integer quantidadeCidadaos = 0;
        private static Integer numeroFilhos = 0;
        private static Double salarioTotal =  0d;
        private static Double maiorSalario = 0d;
        private static List<String> nomesSalarioMenor = new ArrayList<String>();
        private static Integer totalIdade = 0;

        public static void addValues(Integer idade, String nome, Double salario, Integer filhos) {

            numeroFilhos += filhos;
            salarioTotal += salario;
            quantidadeCidadaos++;
            totalIdade += idade;

            if (maiorSalario < salario || maiorSalario == 0) {
                maiorSalario = salario;
            }

            if (salario < 1000d) nomesSalarioMenor.add(nome);

        }

    }

}
