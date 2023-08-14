
//DESAFIO 5
//Calcule o IMC de uma pessoa por meio de um programa. Nele, você solicitará o peso
//do usuário em quilogramas (ex.: 58.9) e sua altura em metros (ex.: 1.68). A partir
//dessas informações, você calculará seu Índice de Massa Corporal (IMC), indicando
//se seu índice é:
//● Abaixo do peso (IMC < 18,5)
//● Peso normal (IMC 18,5-24,9)● Sobrepeso (IMC 25-29,9)
//● Obeso (IMC >= 30).

public class Desafio5 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        Double peso, altura, imc;

        printMensagem("Programa que cálcula o imc e retorna o estado de uma pessoa (sobrepeso, normal, abaixo do peso, obeso)");

        System.out.println(" Informe o peso em quilogramas -> ");
        peso = scanner.nextDouble();

        System.out.println(" Informe a altura em metros -> ");
        altura = scanner.nextDouble();

        imc = peso / (altura * altura);

        if (imc < 18.5) {
            printMensagem("Classificação: Abaixo do peso;" );
        } else if (imc < 24.9) {
            printMensagem("Classificação: Normal;" );
        } else if (imc < 29.9) {
            printMensagem("Classificação: Sobre peso;" );
        } else {
            printMensagem("Classificação: Obeso");
        }

    }
}
