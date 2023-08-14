package view;

import model.Conta;
import model.Movimentacao;

import javax.swing.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class EntradaSaida {
    public static Integer solicitaOpcoes() {

        String[] opcoes = { "Solicitar informações depósito", "Solicitar informações saque",
                            "Exibir saldo", "Exibir dados da conta", "Exibir extrato completo",
                            "Exibir extrato de depósitos", "Exibir extrato de saques", "Sair"};

        JComboBox<String> menu = new JComboBox<>(opcoes);

        JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

        return menu.getSelectedIndex();

    }

    public static void solicitaInfoConta(Conta conta) {

        JOptionPane.showMessageDialog(null, " Primeiramente, informe os dados básicos de uma conta: ");

        conta.setTitularDaConta(JOptionPane.showInputDialog("Informe o titular da conta: "));
        conta.setSaldo(getValor(" Informe o saldo inicial da conta: ", " Informe um valor válido para saldo inicial. "));
        conta.setTipo(getTipoConta());

    }

    private static Conta.TipoConta getTipoConta() {

        try {
            return Conta.TipoConta.valueOf(JOptionPane.showInputDialog("Informe o tipo da conta seguindo o exemplo: (CONTA_POUPANCA, CONTA_CORRENTE)"));
        } catch (Throwable t) {

            JOptionPane.showMessageDialog(null, " Informe o tipo da conta SEGUINDO O EXEMPLO:  (CONTA_POUPANCA, CONTA_CORRENTE)");

            t.printStackTrace();

            return getTipoConta();

        }

    }

    private static Double getValor(String message, String messageError) {

        try {
            return Double.valueOf(JOptionPane.showInputDialog(message));
        } catch (Throwable t) {

            JOptionPane.showMessageDialog(null, messageError);

            t.printStackTrace();

            return getValor(message, messageError);

        }

    }

    public static void fazerDeposito(Conta conta) {

        Movimentacao  movimentacao = solicitaInformacoesMovimentacao(Movimentacao.TipoMovimentacao.DEPOSITO);

        conta.getMovimentacoes().add(movimentacao);

        conta.setSaldo((conta.getSaldo() + movimentacao.getValor()));

    }

    private static Movimentacao solicitaInformacoesMovimentacao(Movimentacao.TipoMovimentacao tipoMovimentacao) {

        Movimentacao movimentacao = new Movimentacao();

        movimentacao.setTipo(tipoMovimentacao);
        movimentacao.setData(new Date());

        movimentacao.setValor(getValor("Informe o valor do " + tipoMovimentacao.toString() + ": ", "Informe um valor válido!"));

        return movimentacao;

    }

    public static void fazerSaque(Conta conta) {

        Movimentacao  movimentacao = solicitaInformacoesMovimentacao(Movimentacao.TipoMovimentacao.SAQUE);

        conta.getMovimentacoes().add(movimentacao);

        Double saldoFinal = conta.getSaldo() - movimentacao.getValor();

        if (saldoFinal < -1000) {
            JOptionPane.showMessageDialog(null, "Saque inválido. Saldo da conta ultrapassou os R$1000.00 negativos;");
        } else {
            movimentacao.setValor(saldoFinal);
        }

    }

    public static void exibirSaldo(Conta conta) {
        JOptionPane.showMessageDialog(null, "Saldo atual: " + conta.getSaldo());
    }

    public static void exibirDadosConta(Conta conta) {

        JOptionPane.showMessageDialog(null, "Saldo atual: " + conta.getSaldo());
        JOptionPane.showMessageDialog(null, "Tipo conta: " + conta.getTipo().toString());
        JOptionPane.showMessageDialog(null, "Titular da conta: " + conta.getTitularDaConta());

    }

    public static void exibirMovimentacoes(List<Movimentacao> movimentacoes) {

        JOptionPane.showMessageDialog(null, movimentacoes.stream().map(movimentacao -> "\nMovimentação -> Tipo: " + movimentacao.getTipo() + "; Valor: " + movimentacao.getValor() + "; Data: "  + new SimpleDateFormat("dd-MM-yyyy HH:mm").format(movimentacao.getData()) + "; \n").collect(Collectors.joining(" ")));

    }
}
