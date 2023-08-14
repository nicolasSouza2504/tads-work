
//Solicite uma palavra ao usuário. Depois, apresente cada letra daquilo que ele
//escreveu e conte quantos caracteres essa palavra tem.

public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        String palavra;

        printMsg(" Programa que recebe uma palavra e retorna as letras da mesma, também exibindo o total de carácteres da mesma");

        System.out.println(" Informe uma palavra -> ");
        palavra = scanner.nextLine();

        for (int i = 0; i < palavra.length(); i++) {

            System.out.println(palavra.charAt(i));

        }

        printMsg(" Total de carácteres -> " + palavra.length());

    }

}
