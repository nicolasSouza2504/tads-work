public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        scanner.nextInt();
        printMsg(" Programa que recebe dois números e exibe as operações básicas com esse número (+-*/)...");

        Integer num1;
        Integer num2;

        System.out.println(" Informe o primeiro númmero -> ");
        num1 = scanner.nextInt();

        System.out.println(" Informe o segundo númmero -> ");
        num2 = scanner.nextInt();

        System.out.println("\n" + num1 + " + " + num2 + " = " + (num1 + num2));
        System.out.println(num1 + " - " + num2 + " = " + (num1 - num2));
        System.out.println(num1 + " * " + num2 + " = " + (num1 * num2));
        System.out.println(num1 + " / " + num2 + " = " + (num1 / num2));


    }

}
