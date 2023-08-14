//Construa uma calculadora que faça as operações básicas de soma, subtração,
//multiplicação e divisão. Você solicitará 2 (dois) números, solicitará a operação e
//mostrará o resultado desse cálculo. Caso seja selecionada uma divisão, você não
//pode permitir que o 2º número seja 0 (zero).

public class Desafio7 extends Desafio {

    public static void main(String[] args) {

        Double valor1, valor2;

        printMsg(" Programa que recebe dois números e realiza a operação selecionada pelo usuário com os mesmos");

        try {

            System.out.println(" Informe o primeiro número -> ");
            valor1 = scanner.nextDouble();

            System.out.println(" Informe o segundo número -> ");
            valor2 = scanner.nextDouble();

            System.out.println(" Informe a operação desejada. Exemplo(+, -, /, *)");

            switch (scanner.next()) {

                case "+":

                    printMsg(valor1 + " + " + valor2 + " = " + ( valor1 + valor2));

                    break;

                case "-":

                    printMsg(valor1 + " - " + valor2 + " = " + (valor1 - valor2));

                    break;

                case "/":

                    validarValores(valor2);
                    printMsg(valor1 + " / " + valor2 + " = " + (valor1 / valor2));

                    break;

                case "*":

                    printMsg(valor1 + " * " + valor2 + " = " + (valor1 * valor2));

                    break;

                default:
                    printMsg(" Informe uma operação dentre as de exemplo (+, -, /, *) ");

            }

        } catch (Exception e) {
            printMensagens(e.getMessage());
        }

    }

    private static Double validarValores(double v) throws Exception {

        if (v == 0d) throw new Exception(" Informe o valor 2 diferente de 0 para divisão! ");

        return v;

    }

}
