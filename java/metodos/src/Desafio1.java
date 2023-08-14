import java.util.ArrayList;
import java.util.List;

//DESAFIO 1
//Construa um programa que solicita 5 nomes e apresenta eles ao final de maneira
//organizada.
public class Desafio1 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe 5 nome e apresenta eles ao final de maneira organizada... ");

        List<String> nomes = new ArrayList<>();

        for (int i = 0; i < 5; i++) {

            System.out.println(" Informe o " + i + "° nome -> ");
            nomes.add(scanner.nextLine());

        }

        exibeOrdemAlfabetica(nomes);
    }

    private static void exibeOrdemAlfabetica(List<String> nomes) {

        nomes.stream().sorted().forEach(nome -> System.out.println("\n" + nome));

    }

}
