import javax.swing.*;

public class Principal {

    private static Operacoes operacoes = new Operacoes();

    public static void main(String[] args) {

        int continuar = 0;
        double resultado = 0;

        do {

            double num1 = EntradaSaida.solicitarNumero("1°");
            double num2 = EntradaSaida.solicitarNumero("2°");

            int operacao = EntradaSaida.solicitarOperacao();

            switch (operacao) {

                case 1:

                    resultado = operacoes.calculaSoma(num1, num2);

                    break;

                case 2:

                    resultado = operacoes.calculaSubtracao(num1, num2);

                    break;

                case 3:

                    resultado = operacoes.calculaMultiplicacao(num1, num2);

                    break;

                case 4:

                    resultado = operacoes.calculaDivisao(num1, num2);

                    break;

                default:

                    JOptionPane.showMessageDialog(null, " Operação inválida! A cálculadora será encerrada! ");

                    System.exit(0);

            }


            EntradaSaida.mostraResultado(resultado, operacao);

            continuar = Integer.valueOf(JOptionPane.showInputDialog("Deseja continuar operacoes.calculando? 1 - Sim | 2 - Não "));

        } while (continuar == 1);

    }

}
