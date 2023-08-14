package view;

import model.Cupom;
import model.Estoque;
import model.Produto;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.BooleanUtils;

import javax.swing.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

public class EntradaSaida {

    public static Integer solicitacaoOpcao() {

        String[] opcoes = {"Cadastrar novo produto", "Visualizar produtos cadastrados",
                "Acrescer estoque", "Vender produto", "Visualizar quantidades estoque", "Visualizar cupons de venda",
                "Calcular valor cupons", "Sair"};

        JComboBox<String> menu = new JComboBox<>(opcoes);

        JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

        return menu.getSelectedIndex();

    }

    public static void solicitaProdutos(Estoque estoque) {

        Boolean repetir = true;

        do {

            Produto produto = new Produto();

            Integer codigo = getIntValue("Informe o código numérico para o produto", "Informe um número válido! ");

            if (existsProdutoCodigo(estoque, codigo)) {

                JOptionPane.showMessageDialog(null, "Produto já cadastrado!");

                repetir = true;

            } else {

                produto.setCodigo(codigo);
                produto.setDescricao(JOptionPane.showInputDialog("Informe a descrição do produto"));
                produto.setQuantidade(0);
                produto.setPreco(getDoubleValue("Informe o preço do produto", "Informe um valor válido para o preco do produto."));

                estoque.getProdutos().add(produto);

                repetir = verificaRepetir("Informar outro produto");

            }

        } while (repetir);

    }

    private static Boolean existsProdutoCodigo(Estoque estoque, Integer codigo) {
        return estoque.getProdutos().stream().anyMatch(prod -> codigo.equals(prod.getCodigo()));
    }

    private static Boolean verificaRepetir(String message) {

        String[] opcoes = {"Voltar", message};

        JComboBox<String> menu = new JComboBox<>(opcoes);

        JOptionPane.showConfirmDialog(null, menu, message, JOptionPane.OK_CANCEL_OPTION);

        return BooleanUtils.toBoolean(menu.getSelectedIndex());

    }

    public static Integer getIntValue(String message, String errorMessage) {

        try {

            Integer value = Integer.valueOf(JOptionPane.showInputDialog(message));

            if (value < 0) {
                throw new Exception("Valor inválido");
            }

            return value;

        } catch (Throwable t) {

            t.printStackTrace();

            JOptionPane.showMessageDialog(null, errorMessage);

            return getIntValue(message, errorMessage);

        }

    }

    public static Double getDoubleValue(String message, String errorMessage) {

        try {

            Double value = Double.valueOf(JOptionPane.showInputDialog(message));

            if (value < 0d) {
                throw new Exception("Valor inválido");
            }

            return value;

        } catch (Throwable t) {

            t.printStackTrace();

            JOptionPane.showMessageDialog(null, errorMessage);

            return getDoubleValue(message, errorMessage);

        }

    }

    public static void exibirProdutos(List<Produto> produtos) {
        JOptionPane.showMessageDialog(null, produtos.stream().map(prod -> "Código: " + prod.getCodigo() + "\n Descrição: " + prod.getDescricao() + "\n Quantidade: " + prod.getQuantidade() + "\n Preço: " + prod.getPreco()).collect(Collectors.joining("\n" + "-".repeat(15)  + "\n")));
    }

    public static void acrescerEstoque(Estoque estoque) {

        do {

            Integer codigo = getIntValue("Informe o código do produto a ser acrescido", "Informe um código válido! ");

            if (existsProdutoCodigo(estoque, codigo)) {

                Integer quantidade = getIntValue("Informe a quantidade do produto a ser acrescido", "Informe uma quantidade válida! ");

                Produto produto = estoque.getProdutos().stream().filter(prod -> prod.getCodigo().equals(codigo)).findFirst().orElse(null);

                produto.setQuantidade(produto.getQuantidade() + quantidade);

            } else {
                JOptionPane.showMessageDialog(null, "Informe o código de um produto cadastrado");
            }

        } while (verificaRepetir("Acrescer outro produto"));

    }

    public static void exibirQuantidadeEstoque(List<Produto> produtos) {
        JOptionPane.showMessageDialog(null, produtos.stream().map(prod -> " Código: " + prod.getCodigo() + "\n Descrição: " + prod.getDescricao() + "\n Quantidade: " + prod.getQuantidade()).collect(Collectors.joining("\n" + "-".repeat(15)  + "\n")));
    }

    public static void venderProduto(List<Produto> produtos) {

        Integer indexProduto = solicitaProdutoVenda(produtos);

        if (indexProduto != null) {

            Integer quantidade = getIntValue(" Informe a quantidade desejada do produto", " Informe um valor válido para quantidade!");

            Produto produtoSelecionado =  produtos.get(indexProduto);

            if (produtoSelecionado.getQuantidade() >= quantidade) {

                produtoSelecionado.getCupons().add(gerarCupomVenda(produtoSelecionado, quantidade));
                produtoSelecionado.setQuantidade(produtoSelecionado.getQuantidade() - quantidade);

            } else {

                JOptionPane.showMessageDialog(null, " Não temos esta quantidade deste produto no estoque.\n Quantia desejada: " + quantidade + " \n Quantia em estoque: " + produtoSelecionado.getQuantidade());

                venderProduto(produtos);

            }

        }

    }

    private static Cupom gerarCupomVenda(Produto produtoSelecionado, Integer quantidade) {

        Cupom cupom = new Cupom();

        cupom.setDataVenda(new Date());
        cupom.setValorTotal((produtoSelecionado.getPreco() * quantidade));
        cupom.setDescricaoProduto(produtoSelecionado.getDescricao());
        cupom.setQuantidadeVendida(quantidade);

        return cupom;

    }

    public static Integer solicitaProdutoVenda(List<Produto> produtos) {

        List<Produto> produtosDisponiveisVenda = produtos.stream().filter(produto -> produto.getQuantidade() > 0).collect(Collectors.toList());

        if (CollectionUtils.isNotEmpty(produtosDisponiveisVenda)) {

            String [] arrayProdutosStr = new String[produtosDisponiveisVenda.size()];
            List<String> listProdutosStr = produtosDisponiveisVenda.stream().map(prod -> prod.getDescricao() + "-" + prod.getCodigo()).collect(Collectors.toList());

            for (int i = 0; i < arrayProdutosStr.length; i++) {
                arrayProdutosStr[i] = listProdutosStr.get(i);
            }

            JComboBox<String> menu = new JComboBox<>(arrayProdutosStr);

            JOptionPane.showConfirmDialog(null, menu, "Selecione o produto desejada", JOptionPane.OK_CANCEL_OPTION);

            return menu.getSelectedIndex();

        } else {

            JOptionPane.showMessageDialog(null, "Sem produtos disponíveis para venda em estoque! ");

            return null;

        }

    }

    public static void visualizarCuponsVenda(List<Produto> produtos) {

        List<Cupom> cupons = new ArrayList<>();

        produtos.forEach(produto -> cupons.addAll(produto.getCupons()));

        if (CollectionUtils.isNotEmpty(cupons)) {

            JOptionPane.showMessageDialog(null, cupons.stream().map(cupom -> " Data venda: " + new SimpleDateFormat("dd-MM-yyyy HH:mm").format(cupom.getDataVenda())
                    + "\n Descrição produto: " + cupom.getDescricaoProduto() + "\n Quantidade venda: " + cupom.getQuantidadeVendida() + "\n Valor total: R$" + cupom.getValorTotal())
                    .collect(Collectors.joining( "\n" + "-".repeat(20) + "\n")));

        } else {
            JOptionPane.showMessageDialog(null, "Nenhuma venda realizada! ");
        }

    }

    public static void exibirValorTotalVendas(List<Produto> produtos) {

        List<Cupom> cupons = new ArrayList<>();

        produtos.forEach(produto -> cupons.addAll(produto.getCupons()));

        if (CollectionUtils.isNotEmpty(cupons)) {

            JOptionPane.showMessageDialog(null, "Valor total vendas: R$" + cupons.stream().mapToDouble(cupom -> cupom.getValorTotal()).sum());

        } else {
            JOptionPane.showMessageDialog(null, "Nenhuma venda realizada! ");
        }
    }
}
