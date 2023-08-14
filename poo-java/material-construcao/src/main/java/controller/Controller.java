package controller;

import model.MaterialDeConstrucao;
import view.EntradaSaida;

import javax.swing.*;

public class Controller {

    private MaterialDeConstrucao materialDeConstrucao;

    public Controller() {
        this.materialDeConstrucao = new MaterialDeConstrucao();
    }

    public void exibirMenu() {

        Boolean repetir = true;


        JOptionPane.showMessageDialog(null, "Informe ao menos um produto para iniciar");

        EntradaSaida.solicitaProdutos(materialDeConstrucao.getEstoque());

        do {

            Integer opcao = EntradaSaida.solicitacaoOpcao();

            switch (opcao) {

                case 0:

                    EntradaSaida.solicitaProdutos(materialDeConstrucao.getEstoque());

                    break;

                case 1:

                    EntradaSaida.exibirProdutos(materialDeConstrucao.getEstoque().getProdutos());

                    break;

                case 2:

                    EntradaSaida.acrescerEstoque(materialDeConstrucao.getEstoque());

                    break;

                case 3:

                    EntradaSaida.venderProduto(materialDeConstrucao.getEstoque().getProdutos());

                    break;

                case 4:

                    EntradaSaida.exibirQuantidadeEstoque(materialDeConstrucao.getEstoque().getProdutos());

                    break;

                case 5:

                    EntradaSaida.visualizarCuponsVenda(materialDeConstrucao.getEstoque().getProdutos());

                    break;

                case 6:

                    EntradaSaida.exibirValorTotalVendas(materialDeConstrucao.getEstoque().getProdutos());

                    break;

                case 7:

                    repetir = false;

                    break;

            }

        } while (repetir);

    }
}
