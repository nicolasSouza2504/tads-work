public class Desafio3 extends Desafio {

    public static void main(String[] args) {

        Integer numero;

        printMsg(" Programa que solicita ao usuário um número inteiro e exibe se o número é par ou ímpar ...");

        System.out.println(" Informe o número -> ");
        numero = scanner.nextInt();

        if (numero % 2 == 0) {
            System.out.println(" Número informado é par! ");
        } else {
            System.out.println(" Número informado é impar! ");
        }

    }

}
