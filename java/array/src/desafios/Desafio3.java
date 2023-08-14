package desafios;
//O Professor "Patolino da Selva" precisa de uma solução para alimentar dois vetores
//com valores reais e, em seguida, armazenar em um terceiro vetor a soma dos
//elementos dos dois vetores, respeitando as mesmas posições.

public class Desafio3 extends Desafio {

    public static void main(String[] args) {
        int[] numbers1 = new int[3];
        int[] numbers2 = new int[3];
        int[] numbersSum = new int[3];

        printMsg(" Programa que recebe dois números e armazena o valor da soma dos mesmos nas mesmas posições... ");


        for (int i = 0; i < 3; i++) {

            System.out.println(" Informe o valor do primeiro número para soma -> ");
            numbers1[i] = scanner.nextInt();

            System.out.println(" Informe o valor do segundo número para soma -> ");
            numbers2[i] = scanner.nextInt();

            numbersSum [i] = numbers2[i] + numbers1[i];

        }

        String[] msgs = new String[3];

        for (int i = 0; i < 3; i++) {
            msgs[i] = (numbers1[i] + " + " + numbers2[i] + " = " + numbersSum[i]);
        }

        printMensagens(msgs);

    }

}
