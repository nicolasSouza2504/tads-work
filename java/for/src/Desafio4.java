//Solicite dois números ao usuário. Você fará a soma e a média APENAS dos números
//que se encontram entre os dois números informados.

public class Desafio4 extends Desafio {

    public static void main(String[] args) {

        Integer num1, num2, soma = 0;
        Double quantidade = 0d;

        printMsg(" Programa que recebe dois números e retorna a soma do intervalo entre eles ");

        System.out.println(" Informe o primeiro número -> ");
        num1 = scanner.nextInt();

        System.out.println(" Informe o segundo número -> ");
        num2 = scanner.nextInt();

        if (num1 > num2) {

            for (Integer i = (num2 + 1); i < num1; i++) {

                soma += i;
                quantidade ++;

            }

        } else {

            for (Integer i = (num1 + 1); i < num2; i++) {

                soma += i;
                quantidade++;

            }

        }

        printMensagens(" Soma do intervalo entre os números -> " + soma, "Média intervalo entre os números -> " + (soma /  quantidade));

    }

}
