package model;

import lombok.Data;

import java.util.Date;

@Data
public class  Cupom {

    private Date dataVenda;
    private String descricaoProduto;
    private Integer quantidadeVendida;
    private Double valorTotal;

}
