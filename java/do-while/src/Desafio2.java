//Criar um programa que solicita ao usuário dois números e, em seguida, pergunta qual
//é o resultado da multiplicação desses dois números. Enquanto o usuário não acertar
//a resposta, o programa deve informar que ele está errado e pedir para tentar
//novamente. Quando o usuário acertar, o programa deve informar que o número está
//correto e mostrar quantas vezes o usuário tentou até acertar.


public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        Boolean winner = false;
        Integer quantidadeTentativas = 0;
        String acerto = " Você acertou ";
        String erro = " Você errou! Tente novamente... ";
        Integer num1, num2;


        printMsg(" Programa que recebe dois números, e recebe o resultado da operação até o exito...");


        System.out.println(" Informe o primeiro número para a multiplicação -> ");
        num1 = scanner.nextInt();

        System.out.println(" Informe o segundo número para a multiplicação -> ");
        num2 = scanner.nextInt();

        do {

            Integer produto;

            System.out.println(" Informe o resultado da multiplicação de " + num1 + " x " + num2 + " -> ");
            produto = scanner.nextInt();

            quantidadeTentativas ++;
            winner = num1 * num2 == produto;

            System.out.println(winner ? acerto : erro);

        } while (!winner);

        printMensagens(acerto, " Quantidade tentativas -> " + quantidadeTentativas);

    }

}
