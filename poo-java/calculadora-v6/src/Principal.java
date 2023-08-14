import javax.swing.*;

public class Principal {

    public static void main(String[] args) {

        int continuar = 0;
        double resultado = 0;
        Operacoes oper = null;

        do {

            double num1 = EntradaSaida.solicitarNumero("1°");
            double num2 = EntradaSaida.solicitarNumero("2°");

            int operacao = EntradaSaida.solicitarOperacao();

            switch (operacao) {

                case 1:

                    oper = new Soma();

                    break;

                case 2:

                    oper = new Subtracao();

                    break;

                case 3:

                    oper = new Multiplicacao();

                    break;

                case 4:

                    oper = new Divisao();

                    break;

                default:

                    JOptionPane.showMessageDialog(null, " Operação inválida! A cálculadora será encerrada! ");

                    System.exit(0);

            }

            oper.setNum1(num1);
            oper.setNum2(num2);

            resultado = oper.calcula();

            EntradaSaida.mostraResultado(resultado, operacao);

            continuar = Integer.valueOf(JOptionPane.showInputDialog("Deseja continuar operacoes.calculando? 1 - Sim | 2 - Não "));

        } while (continuar == 1);

    }

}
