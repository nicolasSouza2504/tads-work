//Você irá criar um programa que solicita ao usuário um número divisor entre 1 e 9. Em
//seguida, você fará a divisão dos números de 0 a 20 pelo número indicado pelo usuário.
//Apresente o quociente e o resto de cada divisão.
//Obs.: atenção para divisões por 0 (zero).

public class Desafio3 extends Desafio {

    public static void main(String[] args) {

        Double num;

        printMsg(" Programa que recebe um número entre 1 e 9, e retorna a divisão dos números de 0 a 20 pelo mesmo");

        System.out.println(" Informe um número entre 1 e 9 para a divisão -> ");
        num = scanner.nextDouble();

        if (num >= 1 && num <= 9) {

            for (int i = 0; i <= 20; i++) {
                System.out.println(i + " / " + num + " = " +  (i / num));
                System.out.println(" Resto divisão -> " + (i % num) + "\n\n");
            }

        } else {
            printMsg("INFORME UM NÚMERO ENTRE 1 E 9, NÚMERO INFORMADO -> " + num);
        }


    }

}
