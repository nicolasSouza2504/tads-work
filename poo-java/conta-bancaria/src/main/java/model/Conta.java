package model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Conta {

    private String titularDaConta;
    private TipoConta tipo;
    private Double saldo;
    private List<Movimentacao> movimentacoes = new ArrayList<>();

    public enum TipoConta {
        CONTA_POUPANCA, CONTA_CORRENTE;
    }
}
