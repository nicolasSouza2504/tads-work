
//Peça ao usuário 5 números. Em seguida, realize a soma apenas entre pares, entre
//ímpares e entre todos eles.

public class Desafio1 extends Desafio {

    public static void main(String[] args) {

        Integer somaPares = 0;
        Integer somaImpares = 0;

        printMsg(" Programa que recebe 5 números e retorna a soma dos impares, pares, e de todos");

        for (int i = 0; i < 5; i++) {

            System.out.println(" Informe o " + (i + 1) + "° número -> ");
            Integer numero = scanner.nextInt();

            if (numero % 2 == 0) {
                somaPares += numero;
            } else {
                somaImpares += numero;
            }

        }

        printMensagens(" Soma Impares -> " + somaImpares, " Soma Pares -> " + somaPares, " Soma total -> " + (somaImpares + somaPares));

    }

}
