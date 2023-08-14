package visualizacao;

import modelo.Aberturas;

import javax.swing.*;
import java.util.List;

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

    public static String solicitaDescricao(String desc, int ordem) {

        if (ordem == 0) {
            return JOptionPane.showInputDialog(" Informe a descrição da " + desc);
        } else {
            return JOptionPane.showInputDialog(" Informe a descrição da " + ordem + " " + desc);
        }

    }

    public static String solicitaCor() {
        return JOptionPane.showInputDialog("Informe a cor da casa");
    }

    public static int solicitaQtdeAberturas(String abertura) {

        try {

            Integer value = Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade de " + abertura));

            if (value != 0 && value > 0) {
                return value;
            } else {
                JOptionPane.showMessageDialog(null, "Informe uma quantidade maior que zero!", null, JOptionPane.INFORMATION_MESSAGE);
                return solicitaQtdeAberturas(abertura);
            }

        } catch (Throwable t) {

            t.printStackTrace();

            JOptionPane.showMessageDialog(null, "Informe um valor válido!", null, JOptionPane.INFORMATION_MESSAGE);

            return solicitaQtdeAberturas(abertura);

        }


    }


    public static int solicitaEstado(String tipoAbertura) {

        String[] opcoes = {"Fechada", "Aberta"};

        return JOptionPane.showOptionDialog(null, " Informe o estado da " + tipoAbertura,
                "Estado", JOptionPane.DEFAULT_OPTION, JOptionPane.INFORMATION_MESSAGE, null,
                opcoes, opcoes[1]);

    }

    public static String solicitaTipoAbertura() {

        String[] opcoes = {"Porta", "Janela"};

        int tipoAbertura = JOptionPane.showOptionDialog(null, "Informe qual tipo de abertura deseja mover",
                "Mover abertura", JOptionPane.DEFAULT_OPTION, JOptionPane.INFORMATION_MESSAGE, null, opcoes, opcoes[0]);

        if (tipoAbertura == 0) {
            return "porta";
        } else {
            return "janela";
        }

    }

    public static int solicitaAberturaMover(List<Aberturas> listaDeAberturas) {

        String tipoAbertura = listaDeAberturas.get(0).getClass().getName();
        tipoAbertura = tipoAbertura.replaceAll("modelo.", "");

        int qtdeAberturas = listaDeAberturas.size();

        String[] descricoesAberturas = new String[qtdeAberturas];

        for (int i = 0; i < qtdeAberturas; i++) {
            descricoesAberturas[i] = listaDeAberturas.get(i).getDescricao();
        }

        String msg = "Escolha a " + tipoAbertura + " a ser movimentada ";

        JComboBox exibicaoAberturas = new JComboBox(descricoesAberturas);

        int confirmacao = JOptionPane.showConfirmDialog(null, exibicaoAberturas, msg, JOptionPane.OK_CANCEL_OPTION);

        if (confirmacao == 0) {
            return exibicaoAberturas.getSelectedIndex();
        } else {
            return -1;
        }

    }

    public static void exibeInfoCasa(String infoCasa) {
        JOptionPane.showMessageDialog(null, infoCasa, "Informações da casa", JOptionPane.INFORMATION_MESSAGE);
    }
}
