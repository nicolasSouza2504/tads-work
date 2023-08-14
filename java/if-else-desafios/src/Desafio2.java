import java.util.ArrayList;
import java.util.List;

public class Desafio2 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        printMensagem(" Programa que calcula a média com 3 notas, e retorna se o usuário foi aprovado reprovado ou está em recuperação! ");

        List<Double> notas = new ArrayList<Double>();
        Double media;

        try {

            System.out.println(" Informe a primeira nota -> ");
            notas.add(validarNota(scanner.nextDouble()));

            System.out.println(" Informe a segunda nota -> ");
            notas.add(validarNota(scanner.nextDouble()));

            System.out.println(" Informe a terceira nota -> ");
            notas.add(validarNota(scanner.nextDouble()));

            media = notas.stream().mapToDouble(nota -> nota).sum() / 3d;

            if (media >= 7) {
                printMensagem(" Aprovado! ");
            } else if (media >= 5) {
                printMensagem(" Em recuperação!");
            } else if (media < 5) {
                printMensagem(" Reprovado! ");
            }

        } catch (Exception e) {
            printMensagens(e.getMessage());
        }

    }

    public static Double validarNota(Double nota) throws Exception {

        if (nota < 0 || nota > 10) throw new Exception(" Informe uma nota válida. Nota informada -> " + nota);

        return nota;

    }


}
