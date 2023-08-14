public class Desafio6 extends Desafio {

    public static void main(String[] args) {

        Boolean repeat = false;
        do {

            Double peso, altura, imc;

            System.out.println(" Informe o peso em quilogramas -> ");
            peso = scanner.nextDouble();

            System.out.println(" Informe a altura em metros -> ");
            altura = scanner.nextDouble();
            scanner.nextLine();

            imc = peso / (altura * altura);

            printMsg(" IMC cálculado -> " + imc);

            System.out.println(" Deseja calcular o IMC novamente? Caso sim, digite 'repetir'");
            String repetir = scanner.nextLine();

            repeat = repetir.equalsIgnoreCase("repetir");

        } while (repeat);


    }

}
