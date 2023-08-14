public class Desafio5 extends Desafio {

    public static void main(String[] args) {

        String nome;
        Integer numero;
        Double altura;

        printMsg(" Programa que imprime a tubuada de 1 a 10 do número informado...");

        numero = scanner.nextInt();

        for (int i = 1; i <= 10; i++) {
            System.out.println(numero + " X " + i + " = " + (numero * i));
        }

    }

}

