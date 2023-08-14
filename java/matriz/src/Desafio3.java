//Uma empresa quer uma solução que leia três faturamentos nos últimos 6 meses do
//ano.

import java.util.Arrays;

public class Desafio3 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que lê três faturamentos nos ultimos 6 meses...");
        int[][] matrizFaturamento = new int[6][3];


        for (int i = 0; i < matrizFaturamento.length; i++) {

            for (int j = 0; j < matrizFaturamento[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° faturamento " + (i + 1) + "° mês -> ");
                matrizFaturamento[i][j] = scanner.nextInt();

            }

        }

        for (int i = 0; i < matrizFaturamento.length; i++) {

            printMsg(" Faturamento " + (i + 1) + "° mês ");

            for (int j = 0; j < matrizFaturamento[i].length; j++) {
                System.out.println(matrizFaturamento[i][j] + "\n");

            }

            System.out.println(" Total -> " + Arrays.stream(matrizFaturamento[i]).sum());
        }

    }

}
