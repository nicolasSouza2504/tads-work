package visualizacao;

import modelo.Carro;

import javax.swing.*;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

public class EntradaSaida {

    public static Integer solicitaAcao() {

        String[] opcoes = {"Fabricar Carro", "Vender Carro", "Ver Carros", "Sair"};

        JComboBox<String> menu = new JComboBox<>(opcoes);

        JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

        return menu.getSelectedIndex();

    }

    public static HashMap<String, Object> solicitarInformacoesCarro() {

        String cor = JOptionPane.showInputDialog("Informe a cor do carro:");
        String modelo = JOptionPane.showInputDialog("Informe o modelo do carro:");

        Integer quantidade = solicitarQuantidade();

        HashMap<String, Object> values = new HashMap<>();

        values.put("cor", cor);
        values.put("modelo", modelo);
        values.put("quantidade", quantidade);

        return values;

    }

    private static Integer solicitarQuantidade() {

        try
 {

            return Integer.valueOf(JOptionPane.showInputDialog("Informe a quantidade de carros a serem fabricados: "));

        } catch (Throwable t) {

            t.printStackTrace();

            return solicitarQuantidade();

        }

    }

    public static Integer solicitarCarroParaVenda(List<Carro> carrosDisponiveis) {

        JComboBox<Object> menu = new JComboBox<>(carrosDisponiveis.stream().map(carro -> carro.getModelo() + " - " + carro.getCor()).collect(Collectors.toList()).toArray());

        JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

        return menu.getSelectedIndex();

    }

    public static void verCarros(List<Carro> carrosDisponiveis) {

        JComboBox<Object> menu = new JComboBox<>(carrosDisponiveis.stream().map(carro -> carro.getModelo() + " - " + carro.getCor()).collect(Collectors.toList()).toArray());

        JOptionPane.showConfirmDialog(null, menu, "Visualizar Carros", JOptionPane.OK_CANCEL_OPTION);

    }

}
