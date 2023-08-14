import java.io.IOException;

public class Desafio1 extends Desafio {

    public static void main(String[] args) throws IOException {

        printMsg(" Programa que lê e nome e idade e retorna uma saldação ao usuário...");

        String nome;
        Integer idade;

        System.out.println(" Informe o nome do usuário -> ");
        nome = scanner.next();

        System.out.println(" Informe a idade do usuário -> ");
        idade = scanner.nextInt();

        System.out.println(" Olá " + nome + ", você tem " + idade + " anos !!");

    }

}
