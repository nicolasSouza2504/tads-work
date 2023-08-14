package desafios;//Faça um programa que leia 10 números inteiros digitados pelo usuário e armazene-
//os em um vetor. Em seguida, calcule e imprima a média desses números e informe o
//2º maior e o 3º menor número

import java.util.Arrays;

public class Desafio1 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe 10 números pelo usuário, calcula a média desses números e retorna o 2° maior e o 3° menor número");

        int[] numbers = new int[10];
        Integer media = 0;

        for (int i = 0; i < 10; i++) {

            System.out.println(" Informe o " + (i + 1) + "° número");
            int numberToAdd;
            numberToAdd = scanner.nextInt();

            if (new Long(Arrays.stream(numbers).filter(j -> j == numberToAdd).count()).intValue() > 0) {
                printMsg(" Número ja informado na lista!");
                i--;
            } else {
                numbers[i] = numberToAdd;
            }

        }

        Integer segundoMaior;
        segundoMaior = Arrays.stream(numbers).max().orElse(0);
        Integer finalSegundoMaior = segundoMaior;
        segundoMaior = Arrays.stream(numbers).filter(i -> i != finalSegundoMaior).max().orElse(0);


        Integer menor;
        Integer segundoMenor;
        Integer terceiroMenor = 0;

        menor = Arrays.stream(numbers).min().orElse(0);
        segundoMenor = Arrays.stream(numbers).filter(i -> i != menor).min().orElse(0);

        terceiroMenor = Arrays.stream(numbers).filter(i -> segundoMenor != i && menor != i).min().orElse(0);

        printMensagens(" Segundo maior número -> " + segundoMaior, " Terceiro menor número -> " + terceiroMenor, " Média -> " + Arrays.stream(numbers).sum() / 10);

    }

}
