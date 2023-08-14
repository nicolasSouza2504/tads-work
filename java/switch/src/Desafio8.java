//Desenvolva um programa que permita calcular o imposto de renda de uma pessoa.
//O usuário informa o valor do salário bruto mensal e o programa deve calcular o valor
//do imposto de acordo com a seguinte tabela:
//● Salário até R$1.903,98: isento de imposto
//● Salário de R$1.903,99 até R$2.826,65: 7,5% de imposto
//● Salário de R$2.826,66 até R$3.751,05: 15% de imposto
//● Salário de R$3.751,06 até R$4.664,68: 22,5% de imposto
//● Salário acima de R$4.664,68: 27,5% de imposto
//Calcule o valor do imposto de acordo com o salário informado pelo usuário e exiba o
//resultado. Lembre-se de que o valor do imposto deve ser calculado apenas sobre a
//diferença entre o salário e o limite inferior de cada faixa de imposto. Por exemplo, se
//o salário for R$2.000,00, o valor do imposto será 7,5% sobre R$96,01 (R$2.000,00 -
//R$1.903,99). Caso o valor do imposto seja igual a zero, exiba a mensagem "Isento
//de imposto". Caso contrário, exiba o valor do imposto calculado.

public class Desafio8 extends Desafio {

    public static void main(String[] args) {

        Double salario, total, desconto = 0d;

        printMensagens(" Programa que retorna o salario final com cálculo do imposto; ");

        System.out.println(" Informe o salário -> ");
        salario = scanner.nextDouble();

        if (salario > 0) {

            if (salario < 1903.98) {
                desconto = 0d;
            } else if (salario < 2826.65) {
                desconto = (salario - 1903.98) * 0.075;
            } else if (salario < 3751.05) {
                desconto = (salario - 2826.65) * 0.15;
            } else if (salario < 4664.68) {
                desconto = (salario - 3751.05) * 0.225;
            } else {
                desconto = (salario - 4664.68) * 0.275;
            }

            total = salario - desconto;

            printMensagens(" Valor bruto -> " + salario, " Desconto -> " + (desconto == 0 ? " Isento " : desconto),
                    " Salario liquido -> " + total);

        } else {
            printMsg(" Informe um salário válido! ");
        }

    }

}
