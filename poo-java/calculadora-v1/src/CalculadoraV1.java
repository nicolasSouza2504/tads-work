import javax.swing.*;

public class CalculadoraV1 {

    public static void main(String[] args) {

        int continuar = 0;
        double resultado = 0;

        do {

            double num1 = solicitarNumero("1°");
            double num2 = solicitarNumero("2°");

            int operacao = solicitarOperacao();

            switch (operacao) {

                case 1:

                    resultado = calculaSoma(num1, num2);

                    break;

                case 2:

                    resultado = calculaSubtracao(num1, num2);

                    break;

                case 3:

                    resultado = calculaMultiplicacao(num1, num2);

                    break;

                case 4:

                    resultado = calculaDivisao(num1, num2);

                    break;

                default:

                    JOptionPane.showMessageDialog(null, " Operação inválida! A cálculadora será encerrada! ");

                    System.exit(0);

            }

            mostraResultado(resultado, operacao);

            continuar = Integer.valueOf(JOptionPane.showInputDialog("Deseja continuar calculando? 1 - Sim | 2 - Não "));

        } while (continuar == 1);

    }

    private static void mostraResultado(double resultado, int operacao) {

        String op;
        if (operacao == 1) {
            op = "soma";
        } else if (operacao == 2) {
            op = "subtração";
        } else if (operacao == 3) {
            op = "multiplicação";
        } else {
            op = "divisão";
        }

        JOptionPane.showMessageDialog(null, " O resultado da " + op + " é " + resultado);

    }

    private static double calculaDivisao(double num1, double num2) {
        return num1 / num2;
    }

    private static double calculaMultiplicacao(double num1, double num2) {
        return num1 * num2;
    }

    private static double calculaSubtracao(double num1, double num2) {
        return num1 - num2;
    }

    private static double calculaSoma(double num1, double num2) {
        return num1 + num2;
    }

    public static double solicitarNumero(String ordem) {
        return Double.valueOf(JOptionPane.showInputDialog(" Informe o " + ordem + "número "));
    }

    public static int solicitarOperacao() {
        return Integer.valueOf(JOptionPane.showInputDialog("Escolha a opção desejada: \n" +
                " 1 - Soma\n" +
                " 2 - Subtração\n" +
                " 3 - Multiplicação\n" +
                " 4 - Divisão\n"));
    }

}
