package desafios;
//Será construído um programa composto por um vetor de 5 (cinco) posições que será
//alimentado com números inteiros. Inicialmente, o programa será desenvolvido sem o
//uso de uma estrutura de repetição, a fim de evidenciar a facilidade de uso desse tipo
//de estrutura.

import java.util.Arrays;
import java.util.stream.Collectors;

public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe 5 números e os exibe... ");
        Integer[] integers = new Integer[5];

        System.out.println(" Informe o primeiro número -> ");
        integers[0] = scanner.nextInt();

        System.out.println(" Informe o segundo número -> ");
        integers[1] = scanner.nextInt();

        System.out.println(" Informe o terceiro número -> ");
        integers[2] = scanner.nextInt();

        System.out.println(" Informe o quarto número -> ");
        integers[3] = scanner.nextInt();

        System.out.println(" Informe o quinto número -> ");
        integers[4] = scanner.nextInt();

        printMensagens(" Lista de números -> [" + Arrays.stream(integers).map(i -> String.valueOf(i)).collect(Collectors.joining(", ")) + "] ");
    }

}
