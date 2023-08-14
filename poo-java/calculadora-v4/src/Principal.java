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

                    Soma soma = new Soma();

                    soma.setNum1(num1);
                    soma.setNum2(num2);

                    resultado = soma.calculaSoma();

                    break;

                case 2:

                    Subtracao subtracao = new Subtracao();

                    subtracao.setNum1(num1);
                    subtracao.setNum2(num2);

                    resultado = subtracao.calculaSubtracao();

                    break;

                case 3:

                    Multiplicacao multiplicao = new Multiplicacao();

                    multiplicao.setNum1(num1);
                    multiplicao.setNum2(num2);

                    resultado = multiplicao.calculaMultiplicacao();

                    break;

                case 4:

                    Divisao divisao = new Divisao();

                    divisao.setNum1(num1);
                    divisao.setNum2(num2);

                    resultado = divisao.calculaDivisao();

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
