package model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Estoque {

    private List<Produto> produtos;

    public Estoque() {
        this.produtos = new ArrayList<>();
    }

}
