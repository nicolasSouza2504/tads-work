import java.util.Scanner;

public class Desafio {

    static Scanner scanner = new Scanner(System.in);

    public static void printMensagem(String mensagem) {

        System.out.println("\n" + "=".repeat(35) + "\n");
        System.out.println(mensagem);
        System.out.println("\n"+ "=".repeat(35)+ "\n");

    }

    public static void printMensagens(String ... mensagens) {

        System.out.println("\n" + "=".repeat(35) + "\n");

        for (String mensagem : mensagens) {
            System.out.println(mensagem);
        }

        System.out.println("\n" + "=".repeat(35) + "\n");

    }


}
