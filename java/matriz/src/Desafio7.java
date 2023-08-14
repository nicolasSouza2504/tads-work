
//Crie um programa para solicitar os valores de uma matriz 3x2. Em seguida, você
//deverá fazer a transposição dessa matriz.
//Obs.: pesquisar o que é matriz transposta.

import java.util.Arrays;
import java.util.stream.Collectors;

public class Desafio7 extends Desafio {

    public static void main(String[] args) {

        int[][] matrixToTranspose = new int[3][2];
        int[][] transposedMatrix = new int [2][3];

        printMsg(" Programa que realiza a transposicão de uma matriz");


        for (int i = 0; i < matrixToTranspose.length; i++) {

            for (int j = 0; j < matrixToTranspose[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° número da " + (i + 1) + "° linha -> ");
                matrixToTranspose[i][j] = scanner.nextInt();

            }

        }

        for (int i = 0; i < transposedMatrix.length; i++) {

            for (int j = 0; j < transposedMatrix[i].length; j++) {
                transposedMatrix[i][j] = matrixToTranspose[j][i];
            }

        }

        printMsg(" Matrix to transpose:  ");
        for (int i = 0; i < matrixToTranspose.length; i++) {
            System.out.println(Arrays.stream(matrixToTranspose[i]).mapToObj(num -> String.valueOf(num)).collect(Collectors.joining(" ")));
        }

        printMsg(" Transposed  matrix ");
        for (int i = 0; i < transposedMatrix.length; i++) {
            System.out.println(Arrays.stream(transposedMatrix[i]).mapToObj(num -> String.valueOf(num)).collect(Collectors.joining(" ")));
        }

    }

}

//
//to transpose
//1 1
//2 2
//3 3
//
//transposed
//
//1 2 3
//1 2 3
