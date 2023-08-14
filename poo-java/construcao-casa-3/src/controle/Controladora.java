package controle;

import modelo.Aberturas;
import modelo.Casa;
import modelo.Janela;
import modelo.Porta;
import visualizacao.EntradaSaida;

import javax.swing.*;
import java.util.ArrayList;

public class Controladora {

    Casa casa = null;

    public void exibeMenu() {

        int opcao;

        do {

            opcao = EntradaSaida.solicitaOpcao();

            switch (opcao) {

                case 0:

                    this.casa = new Casa();

                    String descricao = EntradaSaida.solicitaDescricao("casa", 0);
                    String cor = EntradaSaida.solicitaCor();
                    int qtdePortas = EntradaSaida.solicitaQtdeAberturas("portas");
                    int qtdeJanelas = EntradaSaida.solicitaQtdeAberturas("janelas");

                    ArrayList<Aberturas> listaPortas = new ArrayList<Aberturas>();

                    for (int i = 0; i < qtdePortas; i++) {

                        Porta porta = new Porta();

                        porta.setDescricao(EntradaSaida.solicitaDescricao("porta", (i + 1)));
                        porta.setEstado(EntradaSaida.solicitaEstado("porta"));

                        listaPortas.add(porta);

                    }

                    ArrayList<Aberturas> listaJanelas = new ArrayList<Aberturas>();

                    for (int i = 0; i < qtdeJanelas; i++) {

                        Janela janela = new Janela();

                        janela.setDescricao(EntradaSaida.solicitaDescricao("janela", (i + 1)));
                        janela.setEstado(EntradaSaida.solicitaEstado("janela"));

                        listaJanelas.add(janela);

                    }

                    this.casa.constroiCasa(descricao, cor, listaPortas, listaJanelas);

                    break;

                case 1:

                    String tipoAbertura = EntradaSaida.solicitaTipoAbertura();

                    ArrayList<Aberturas> listaAberturas = new ArrayList<Aberturas>();

                    if ("porta".equals(tipoAbertura)) {
                        listaAberturas = this.casa.getListaDePortas();
                    } else {
                        listaAberturas = this.casa.getListaDeJanelas();
                    }

                    int posicao = EntradaSaida.solicitaAberturaMover(listaAberturas);
                    int novoEstado = 0;

                    if (posicao != -1) {

                        novoEstado =  EntradaSaida.solicitaEstado(tipoAbertura);

                        Aberturas abertura = this.casa.retornaAbertura(posicao, tipoAbertura);

                        this.casa.moverAbertura(abertura, novoEstado);

                        System.out.println("Novo estado da " + tipoAbertura + ": " + novoEstado);

                    } else {
                        this.casa.exibeMsgAbertura();
                    }

                break;

                case 2:

                    JOptionPane.showMessageDialog(null, "Ver informações da casa");

                break;

            }

        } while (opcao != 3);

        EntradaSaida.exibeMensagemEncerraPrograma();

        System.exit(0);

    }


}

