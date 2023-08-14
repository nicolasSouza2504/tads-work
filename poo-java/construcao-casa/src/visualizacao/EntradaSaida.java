package visualizacao;

import javax.swing.*;

public class EntradaSaida {

    public static int solicitaOpcao() {

        String[] opcoes = {"Construir casa", "Movimentar portas ou janelas",
                           "Ver informações da casa", "Sair do programa"};

        JComboBox<String> menu = new JComboBox<>(opcoes);

        JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

        return menu.getSelectedIndex();

    }

    public static void exibeMensagemEncerraPrograma() {
        JOptionPane.showMessageDialog(null, "O programa será encerrado!");
    }

}
