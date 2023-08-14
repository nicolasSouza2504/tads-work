package model;

import lombok.Data;

@Data
public class MaterialDeConstrucao {

    private Estoque estoque;

    public MaterialDeConstrucao() {
        this.estoque  = new Estoque();
    }
}
