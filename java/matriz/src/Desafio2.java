
//Faça um programa que leia as notas de 5 alunos em 3 avaliações e armazene-as em
//uma matriz 5x3. Em seguida, o programa deve calcular e imprimir a média aritmética
//de cada aluno.

import java.util.Arrays;

public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que le a nota de 5 alunos em 3 avaliações depois imprime a média de cada aluno...");

        int[][] matrizAlunos = new int[5][3];
        int[] mediaAlunos = new int[5];

        for (int i = 0; i < matrizAlunos.length; i++) {

            for (int j = 0; j < matrizAlunos[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° nota da " + (i + 1) + "° aluno -> ");
                matrizAlunos[i][j] = scanner.nextInt();

            }

            mediaAlunos[i] = Arrays.stream(matrizAlunos[i]).sum() / 3;

        }

        printMsg(" Média Alunos ");

        for (int i = 0; i < mediaAlunos.length; i++) {
            System.out.println((i + 1) + "° aluno -> " + mediaAlunos[i]);
        }

    }

}
