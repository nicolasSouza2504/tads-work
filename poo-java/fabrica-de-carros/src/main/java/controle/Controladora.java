package controle;

import modelo.Carro;
import modelo.Fabrica;
import visualizacao.EntradaSaida;

import javax.swing.*;

public class Controladora {

    private Fabrica fabrica = new Fabrica();

    public void exibeMenu() throws Exception {

        Integer acao;

        do {

            acao = EntradaSaida.solicitaAcao();

            switch (acao) {

                case 0:

                    fabrica.fabricarCarro(EntradaSaida.solicitarInformacoesCarro());

                    break;

                case 1:

                    Carro carroParaVenda = fabrica.getCarros().get(EntradaSaida.solicitarCarroParaVenda(fabrica.getCarros()));

                    fabrica.venderCarro(carroParaVenda);

                    break;
                case 2:

                    EntradaSaida.verCarros(fabrica.getCarros());

                    break;

            }

        } while(acao != 3);


    }

}
