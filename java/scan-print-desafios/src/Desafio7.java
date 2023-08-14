public class Desafio7 extends Desafio {


    public static void main(String[] args) {

        Double celsius;

        printMsg(" Programa que recebe uma temperatura em graus celsius e exibe o mesmo convertido para kelvin e fahrenheit...");

        System.out.println(" Informe uma temperatura -> ");
        celsius = scanner.nextDouble();

        System.out.println("\n================================\n");
        System.out.println(" Celsius -> " + celsius + "°C");
        System.out.println(" Kelvin -> " + (celsius + 273.15) + "°K");
        System.out.println(" Fahrenheit -> " + ((celsius * 9d/5d) + 32d) + "°F");
        System.out.println("\n================================\n");

    }

}
