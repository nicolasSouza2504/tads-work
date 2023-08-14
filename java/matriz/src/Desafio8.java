//Desenvolva um programa em Java que leia uma matriz de dimensões 4x4 e exiba o
//resto da divisão de cada elemento da diagonal principal. Além disso, apresente
//também produto 3total da diagonal secundária da matriz.

//Desenvolva um programa em Java que leia uma matriz de dimensões 4x4 e exiba o
//resto da divisão de cada elemento da diagonal principal por 3. Além disso, apresente
//também produto total da diagonal secundária da matriz.

import java.util.ArrayList;
import java.util.List;

public class Desafio8 extends Desafio {

    public static void main(String[] args) {

        int[][] matrix = new int[4][4];

        printMsg(" Programa que le uma matriz 4 x 4 e exibe o resto da dividão de cada elemento da diagonal principal, também aprensentando o produto final da matriz secundária...");

        for (int i = 0; i < matrix.length; i++) {

            for (int j = 0; j < matrix[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° número da " + (i + 1) + "° linha -> ");
                matrix[i][j] = scanner.nextInt();

            }

        }

        printMsg(" Diagonal primária ");

        for (int i = 0; i < matrix.length; i++) {

            String print = "";

            for (int j = 0; j < matrix[i].length; j++) {

                if (j == i) {
                    print += " " + matrix[i][j] % 3 + " ";
                } else {
                    print += " * ";
                }

            }

            System.out.println(print);

        }

        Integer produto = null;

        printMsg(" Diagonal secundária ");

        for (int i = 0; i < matrix.length; i++) {

            String print = "";

            for (int j = 0; j < matrix[i].length; j++) {



                if ((i + (j + 1)) == matrix[i].length) {

                    print += " " + matrix[i][j]  + " ";

                    if (produto != null) {
                        produto = produto * matrix[i][j];
                    } else {
                        produto = matrix[i][j];
                    }

                } else {
                    print += " * ";
                }

            }

            System.out.println(print);

        }

        printMsg(" Produto da diagonal secundária = " + produto);

    }

}
