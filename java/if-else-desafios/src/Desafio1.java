public class Desafio1 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        Double nota;

        printMensagem(" Programa que analisa a nota de um usuário e retorna se ele foi aprovado ou não...");

        System.out.println(" Informe a sua nota -> ");
        nota = scanner.nextDouble();

        if (nota >= 0 || nota <=10) {
            if (nota >= 7) {
                printMensagem(" Aprovado! ");
            } else if (nota >= 5) {
                printMensagem(" Em recuperação!");
            } else if (nota < 5) {
                printMensagem(" Reprovado! ");
            }

        } else {
            printMensagens(" Informe uma nota de 0 a 10");
        }

    }

}
