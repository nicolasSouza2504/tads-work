package control;

import model.Conta;
import model.Movimentacao;
import view.EntradaSaida;

import javax.xml.stream.events.EntityReference;
import java.util.stream.Collectors;

public class Controladora {

    private Conta conta = new Conta();

    public void exibeMenu() {

        EntradaSaida.solicitaInfoConta(conta);

        Boolean repetir = true;

        do {

            Integer opcaoMenu = EntradaSaida.solicitaOpcoes();

            switch (opcaoMenu) {

                case 0:

                    EntradaSaida.fazerDeposito(conta);

                    break;

                case 1:

                    EntradaSaida.fazerSaque(conta);

                    break;

                case 2:

                    EntradaSaida.exibirSaldo(conta);

                    break;

                case 3:

                    EntradaSaida.exibirDadosConta(conta);

                    break;

                case 4:

                    EntradaSaida.exibirMovimentacoes(conta.getMovimentacoes());

                    break;

                case 5:

                    EntradaSaida.exibirMovimentacoes(conta.getMovimentacoes().stream().filter(movimentacao -> movimentacao.getTipo().equals(Movimentacao.TipoMovimentacao.DEPOSITO)).collect(Collectors.toList()));

                    break;
                case 6:

                    EntradaSaida.exibirMovimentacoes(conta.getMovimentacoes().stream().filter(movimentacao -> movimentacao.getTipo().equals(Movimentacao.TipoMovimentacao.SAQUE)).collect(Collectors.toList()));

                    break;

                case 7:

                    repetir = false;

                    break;

            }

        } while (repetir);

    }

}
