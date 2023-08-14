//Você deverá desenvolver um programa que irá validar números digitados pelo usuário.
//O programa continuará sendo executado enquanto o usuário digitar um número ímpar,
//sendo que ele será encerrado assim que o usuário digitar um número par. Ao final do
//programa, será informado quantos números foram digitados até que ele fosse
//encerrado

public class Desafio1 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que valida números digitados pelo usuário...");
        Boolean repeat = true;
        Integer quantidadeRepeticoes = 0;

        do {

            System.out.println(" Informe um número Ex(1, 5, 6)-> ");

            if (scanner.nextInt() % 2 == 0) {
                repeat = false;
            }

            quantidadeRepeticoes++;

        } while (repeat);

        printMensagens(" Quantidade de repetições programa -> " + quantidadeRepeticoes);

    }

}
