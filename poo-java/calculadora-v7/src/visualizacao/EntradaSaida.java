package visualizacao;

import javax.swing.*;

public class EntradaSaida {
    public static void mostraResultado(double resultado, int operacao) {

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

    public static int solicitarOperacao() {
        return Integer.valueOf(JOptionPane.showInputDialog("Escolha a opção desejada: \n" +
                " 1 - modelo.Soma\n" +
                " 2 - Subtração\n" +
                " 3 - Multiplicação\n" +
                " 4 - Divisão\n"));
    }

    public static double solicitarNumero(String ordem) {
        return Double.valueOf(JOptionPane.showInputDialog(" Informe o " + ordem + "número "));
    }

}
