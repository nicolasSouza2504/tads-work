//Crie um programa que solicite dois números ao usuário. Enquanto ele não digitar o
//resultado correto da soma desses dois números, mostre a mensagem "Tente
//novamente". Quando o usuário acertar o resultado, exiba a mensagem "Resultado
//correto!".

public class Desafio5 extends Desafio {

    public static void main(String[] args) {

        Integer num1, num2, tentativa, soma;
        Boolean acerto;

        printMsg(" Programa que solicita dois números ao usuário e solicita o resultado da soma dos mesmos -> ");

        System.out.println(" Informe o primeiro número para soma -> ");
        num1 = scanner.nextInt();

        System.out.println(" Informe o segundo número para soma -> ");
        num2 = scanner.nextInt();

        soma = num1 + num2;

        do {

            System.out.println(" Informe a soma do primeiro pelo segundo número -> ");
            tentativa = scanner.nextInt();

            if (tentativa != soma) printMsg(" Tente novamente! ");

        } while (tentativa != soma);

        printMsg(" Você acertou! ");

    }

}
