import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

//Construa um programa que será formado por um vetor de 5 (cinco) posições e o
//alimente com números inteiros. Apresente o vetor de maneira organizada no final.
public class Desafio6 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que le 5 números e apresenta o vetor no final ordenado de maneira organizada");
        int[] numbers = new int[5];

        for (int i = 0; i < 5; i++) {

            System.out.println(" Informe o " + (i + 1) + "° número -> ");
            numbers[i] = scanner.nextInt();

        }

        printOrderedNumbers(numbers);

    }

    private static void printOrderedNumbers(int[] numbers) {

        AtomicReference<String> print = new AtomicReference<>("");

        Arrays.stream(numbers).sorted().forEach(n -> print.updateAndGet(v -> v + n));

        System.out.println(print.get());

    }

}
