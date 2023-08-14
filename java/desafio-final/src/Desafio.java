import java.util.List;
import java.util.Scanner;

public class Desafio {

    protected static Scanner scanner = new Scanner(System.in);

    public static void printMsg(String mensagem) {

        System.out.println("\n================================\n");
        System.out.println(mensagem);
        System.out.println("\n================================\n");

    }

    public static void printMensagens(String ... mensagens) {

        System.out.println("\n" + "=".repeat(35) + "\n");

        for (String mensagem : mensagens) {
            System.out.println(mensagem);
        }

        System.out.println("\n" + "=".repeat(35) + "\n");

    }

    public static void printMensagens(List<String> mensagens) {

        System.out.println("\n" + "=".repeat(35) + "\n");

        for (String mensagem : mensagens) {
            System.out.println(mensagem);
        }

        System.out.println("\n" + "=".repeat(35) + "\n");

    }

}
