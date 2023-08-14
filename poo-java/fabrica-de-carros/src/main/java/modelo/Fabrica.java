package modelo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Fabrica {

    private List<Carro> carros = new ArrayList<>();

    public void venderCarro(Carro carro) {
        carros.remove(carro);
    }

    public void fabricarCarro(HashMap<String, Object> values) {

        Integer quantidade = (Integer) values.get("quantidade");

        for (Integer i = 0; i < quantidade; i++) {

            Carro carro = new Carro();

            carro.setCor((String) values.get("cor"));
            carro.setModelo((String) values.get("modelo"));

            carros.add(carro);

        }

    }

    public List<Carro> getCarros() {
        return carros;
    }

    public void setCarros(List<Carro> carros) {
        this.carros = carros;
    }
}
