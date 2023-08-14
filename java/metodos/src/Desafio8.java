//Você está organizando um evento beneficente e precisa distribuir um único
//brinde para uma das pessoas participantes do evento. Contudo, esse evento não
//permite sorteio nominal. Então, alguém deu a seguinte ideia: desenvolver uma
//solução de adivinhação. A pessoa vai no computador e pode digitar até 5 (cinco)
//números, ou seja, ela terá 5 (cinco) chances. Se ela adivinhar um o número
//escolhido aleatoriamente pelo computador, ela ganhará. Se acertar aparecerá
//“PARABÉNS! Você ganhou o brinde!”. Se não, lerá “Que pena. Infelizmente você
//não acertou.”
public class Desafio8 extends Desafio {

    public static void main(String[] args) {

        Integer number = getRandomNumber(0, 10);
        Boolean acertou = false;

        printMsg(" Programa que sorteia um número e da 5 chances para o usuário acertar. ");

        for (int i = 0; i < 5; i++) {

            Integer n;

            System.out.println("Insira o valor da sua " + (i + 1) + "° tentativa -> ");
            n = scanner.nextInt();

            if (n.equals(number)) {
                acertou = true;
                break;
            }

        }

        if (acertou) {
            printMsg("PARABÉNS. Você ganhou o brinde! ");
        } else {
            printMsg("Que pena. Infelizmente você não acertou.");
        }

    }

    public static int getRandomNumber(int min, int max) {
        return (int) ((Math.random() * (max - min)) + min);
    }
}
