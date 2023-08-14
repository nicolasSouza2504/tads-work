//Uma empresa solicitou uma solução que permita a leitura de uma matriz 5 x 5
//contendo números inteiros, e que gere outra matriz de mesmo tamanho, em que cada
//elemento da nova matriz seja o dobro do elemento correspondente na matriz original.
//O programa deve exibir tanto a matriz original quanto a nova matriz gerada.

import java.util.Arrays;
import java.util.stream.Collectors;

public class Desafio5 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que le uma matriz 5x5 e gera uma matriz com o dobro dos valores...");

        int[][] original = new int[5][5];

        for (int i = 0; i < original.length; i++) {

            for (int j = 0; j < original[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° faturamento " + (i + 1) + "° mês -> ");
                original[i][j] = scanner.nextInt();

            }

        }

        printMsg(" Matriz original ");
        for (int i = 0; i < original.length; i++) {
            System.out.println(Arrays.stream(original[i]).mapToObj(num -> String.valueOf(num)).collect(Collectors.joining(" ")));
        }

        printMsg(" Matriz duplicata ");
        for (int i = 0; i < original.length; i++) {
            System.out.println(Arrays.stream(original[i]).mapToObj(num -> String.valueOf(num * 2)).collect(Collectors.joining(" ")));
        }

    }

}
