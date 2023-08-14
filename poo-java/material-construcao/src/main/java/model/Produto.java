package model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Produto {

    private Integer quantidade;
    private Integer codigo;
    private String descricao;
    private Double preco;
    private List<Cupom> cupons;

    public Produto() {
        this.cupons = new ArrayList<>();
    }


}
