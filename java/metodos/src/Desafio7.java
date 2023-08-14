//Crie um programa formado por uma matriz 3x3. Alimente essa matriz com valores
//inteiros informados pelo usuário. Ao final, solicite ao próprio usuário uma das linhas e
//mostraremos os números contidos nela.

public class Desafio7 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que popula uma matriz 3x3 e retorna a linha que o usuário deseja visualizar ");

        int[][] matrix = getMatriz();

        exibeLinhaDesejada(matrix);

    }

    private static void exibeLinhaDesejada(int[][] matrix) {

        System.out.println(" Informe o número de uma linha para exibição -> ");
        Integer linha = scanner.nextInt();

        try {

            for (int i = 0; i < matrix[linha - 1].length; i++) {
                System.out.println((i + 1) + "° coluna da " + linha + "° linha -> " + matrix[linha - 1][i]);
            }

        } catch (Exception e) {

            System.out.println(" Informe uma linha válida (de 1 a 3). Linha informada -> " + linha + "\n\n");
            exibeLinhaDesejada(matrix);

        }

    }

    private static int[][] getMatriz() {

        int[][] matrix = new int[3][3];

        for (int i = 0; i < 3; i++) {

            for (int j = 0; j < 3; j++) {

                System.out.println(" Informe o valor da " + (i + 1) + "° linha na " + (j + 1) + "° coluna -> ");
                matrix[i][j] = scanner.nextInt();

            }

        }

        return matrix;

    }

}
