//Escreva um programa que solicite ao usuário que digite um número de 1 a 7 e exiba
//o dia da semana correspondente.

public class Desafio1 extends Desafio {

    public static void main(String[] args) {

        Integer diaSemana;

        printMsg(" Programa que recebe um número e retorna o dia da semana para o usuário... ");

        System.out.println("Informe o número do dia da semana -> ");
        diaSemana = scanner.nextInt();

        switch (diaSemana) {

            case 1:

                printMsg("Domingo");

                break;

            case 2:

                printMsg("Segunda-Feira");

                break;

            case 3:

                printMsg("Terça-Feira");

                break;

            case 4:

                printMsg("Quarta-Feira");

                break;

            case 5:

                printMsg("Quinta-Feira");

                break;

            case 6:

                printMsg("Sexta-Feira");

                break;

            case 7:

                printMsg("Sábado");

                break;

            default:

                printMsg(" INFORME UM NÚMERO DE 1 A 7! ");

                break;

        }

    }

}
