import java.util.regex.Pattern;

//Construa um programa que solicite ao usuário apenas os números de seu telefone.
//(ex.: 47987654321). Em seguida, por meio de um método, você construirá uma
//máscara para esse número (ex.: (47) 98765-4321).
public class Desafio4 extends Desafio {

    public static void main(String[] args) {

        printMsg("  Programa que recebe um número não formatado e exibe o número formatado.");

        String numero = getNumero();

        printMsg(" Número formatado -> " + "(" + numero.substring(0,2) + ")" + " " + numero.substring(2, 7) + "-" + numero.substring(7, 11));

    }

    private static String getNumero() {

        String numero;

        System.out.println(" Informe o número para ser formatado seguindo o exemplo -> 47984655980 ");
        numero = scanner.nextLine();

        if (!isNumeroValido(numero)) {

            System.out.println(" Número informado é inválido. Informe o número seguindo o exemplo -> 4798465590. Número informado -> " + numero + "\n\n");

            return getNumero();

        } else {
            return numero;
        }

    }

    private static boolean isNumeroValido(String numero) {

        Boolean valido = true;

        if (numero.length() != 11) {
            valido = false;
        }

        if (Pattern.compile("[^0-9]").matcher(numero).find()) {
            valido = false;
        }

        return valido;

    }

}
