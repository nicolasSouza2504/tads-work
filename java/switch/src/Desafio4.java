//Solicite que o usuário informe uma letra do alfabeto. Posteriormente, verifique se
//essa letra é uma vogal, uma consoante ou um caractere inválido.

import java.util.Arrays;
import java.util.regex.Pattern;

public class Desafio4 extends Desafio {

    public static void main(String[] args) {

        String input;
        String [] vogais = {"a", "e", "i", "o", "u"};
        Pattern pattern = Pattern.compile("[a-zA-Z]");

        printMsg(" Programa que recebe um carácter e retorna se o mesmo é uma vogal, consoante, ou inválido! ");

        System.out.println(" Informe um carácter -> ");
        input = scanner.next();

        if (Arrays.stream(vogais).anyMatch(c -> c.equalsIgnoreCase(input))) {
            printMsg(" Carácter informado é um vogal! ");
        } else if (pattern.matcher(input).find()) {
            printMsg(" Carácter informado é uma consoante! ");
        } else {
            printMsg(" Carácter informado é especial! ");
        }

    }

}
