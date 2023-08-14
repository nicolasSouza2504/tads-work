public class Desafio4 extends Desafio {

    public static void main(String[] args) {

        String nome;
        Integer idade;
        Double altura;

        printMsg(" Programa que solicita ao usuário suas informações e as exibe organizadamente...");

        System.out.println(" Informe o seu nome -> ");
        nome = scanner.next();

        System.out.println(" Informe sua idade -> ");
        idade = scanner.nextInt();

        System.out.println(" Informe sua altura -> ");
        altura = scanner.nextDouble();

        System.out.println("\n\n Nome: " + nome + "; " + "Idade: " + idade + "; " + "Altura: " + altura + "; ");

    }

}
