import javax.swing.*;

public class Principal {


    public static void main(String[] args) {

        int continuar = 0;
        double resultado = 0;

        do {

            double num1 = EntradaSaida.solicitarNumero("1°");
            double num2 = EntradaSaida.solicitarNumero("2°");

            int operacao = EntradaSaida.solicitarOperacao();

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

            EntradaSaida.mostraResultado(resultado, operacao);

            continuar = Integer.valueOf(JOptionPane.showInputDialog("Deseja continuar calculando? 1 - Sim | 2 - Não "));

        } while (continuar == 1);

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

}
