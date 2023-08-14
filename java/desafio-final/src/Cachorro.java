import java.util.ArrayList;
import java.util.List;

public class Cachorro {
    private String raca;
    private String comportamento;
    private Boolean adotado;

    private String nome;

    public Cachorro(String raca, String comportamento, Boolean adotado, String nome) {
        this.raca = raca;
        this.comportamento  = comportamento;
        this.adotado = adotado;
        this.nome = nome;
    }

    public Cachorro() {

    }

    public List<Cachorro> getCachorrosDefault() {

        List<Cachorro> lsCachorros = new ArrayList<>();

        lsCachorros.add(new Cachorro("Rottweiler", "Alegre", false, "Chico"));
        lsCachorros.add(new Cachorro("Rottweiler", "Serelepe", false, "Ticó"));
        lsCachorros.add(new Cachorro("Rottweiler", "Triste", false, "Feliz"));

        lsCachorros.add(new Cachorro("Labrador", "Bravo", true, "Garfield"));
        lsCachorros.add(new Cachorro("Labrador", "Carente", true, "Nino" ));
        lsCachorros.add(new Cachorro("Labrador", "Brincalhão", false, "Paçoca" ));

        lsCachorros.add(new Cachorro("Pitbull", "Estressado", true,"Phill"));
        lsCachorros.add(new Cachorro("Pitbull", "Audacioso", false,"Alex"));
        lsCachorros.add(new Cachorro("Pitbull", "Comportado", false,"Tex"));

        return lsCachorros;

    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

    public String getComportamento() {
        return comportamento;
    }

    public void setComportamento(String comportamento) {
        this.comportamento = comportamento;
    }

    public Boolean getAdotado() {
        return adotado;
    }

    public void setAdotado(Boolean adotado) {
        this.adotado = adotado;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
