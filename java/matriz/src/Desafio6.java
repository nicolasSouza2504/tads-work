//Crie duas matrizes 4x4 e compare para saber quantos elementos elas possuam que
//são iguais. Apresente a quantidade e quais são esses elementos

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Desafio6 extends Desafio {

    static Integer quantIguais = new Integer(0);
    static List<Integer> numerosIguais = new ArrayList<Integer>();

    public static void main(String[] args) {

        int[][] matriz = new int[2][2];
        int[][] matriz1 = new int[2][2];

        for (int i = 0; i < matriz.length; i++) {

            for (int j = 0; j < matriz[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° número da " + (i + 1) + "° linha da primeira matriz -> ");
                matriz[i][j] = scanner.nextInt();

            }

        }

        for (int i = 0; i < matriz1.length; i++) {

            for (int j = 0; j < matriz1[i].length; j++) {

                System.out.println("Informe o " + (j + 1) + "° número da " + (i + 1) + "° linha da segundo matriz -> ");
                matriz1[i][j] = scanner.nextInt();

            }

        }


        for (int i = 0; i < matriz.length; i++) {

            for (int j = 0; j < matriz[i].length; j++) {

                for (int k = 0; k < 4; k++) {

                    int finalI = i;
                    int finalJ = j;

                    try {
                        processaNumeroIguais(Arrays.stream(matriz1[k]).filter(num -> num == (matriz[finalI][finalJ])).findFirst().getAsInt());
                    } catch (Exception e) {}


                }

            }

        }

        printMensagens(" Quantidade repetidos ->  " + quantIguais,
                       " Números repetidos -> " + numerosIguais.stream().map(n -> String.valueOf(n)).collect(Collectors.joining(", ")));

    }

    private static void processaNumeroIguais(Integer igual) {

        if (igual != null) {
            quantIguais++;
        }

        if (!numerosIguais.contains(igual)) {
            numerosIguais.add(igual);
        }

    }

}
