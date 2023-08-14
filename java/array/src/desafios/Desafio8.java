
//Faça um programa que leia 5 números inteiros digitados pelo usuário e armazene-os
//em um vetor. Em seguida, o programa deve ordenar os números em ordem crescente
//e imprimir o vetor ordenado.

package desafios;

import java.util.Arrays;
import java.util.stream.Collectors;

public class Desafio8 extends Desafio {

    public static void main(String[] args) {

        int[] numeros = new int[5];

        printMsg(" Programa que le 5 números e retorna os mesmos ordenados em ordem crescente. ");

        for (int i = 0; i < 5; i++) {
            System.out.println(" Informe o " + (i + 1) + "° número ");
            numeros[i] = scanner.nextInt();
        }

        printMsg(Arrays.stream(numeros).sorted().mapToObj(n -> String.valueOf(n)).collect(Collectors.joining(", ")));
    }

}
