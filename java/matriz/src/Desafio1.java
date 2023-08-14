//O professor "Beico Zito" está em busca de uma solução que possa calcular a soma
//de cada linha e a soma total de uma matriz 4x5. Para isso, ele precisa de um algoritmo
//que possa realizar esses cálculos.

import java.util.Arrays;

public class Desafio1 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que calcula a soma de cada linha de uma matriz 4x5, e a soma total de seus elementos");

        int[][] matriz = new int[4][5];
        int[] somaLinhas = new int[4];
        Integer somaTotal = new Integer(0);

        for (int i = 0; i < matriz.length; i++) {

            for (int j = 0; j < matriz[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° valor da " + (i + 1) + "° linha -> ");
                matriz[i][j] = scanner.nextInt();

            }

            somaLinhas[i] = Arrays.stream(matriz[i]).sum();
            somaTotal += somaLinhas[i];

        }

        for (int i = 0; i < 4; i++) {
            System.out.println("\n Soma linha " +(i + 1) + " -> " +  somaLinhas[i]);
        }

        printMsg(" Soma total -> " + somaTotal);

    }

}
