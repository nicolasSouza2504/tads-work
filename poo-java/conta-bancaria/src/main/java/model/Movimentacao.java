package model;

import lombok.Data;

import java.util.Date;

@Data
public class Movimentacao {

    private TipoMovimentacao tipo;

    private Double valor;

    private Date data;

    public enum TipoMovimentacao {
        SAQUE("saque"), DEPOSITO("depósito");

        private String descricao;

        TipoMovimentacao(String descricao) {
            this.descricao = descricao;
        }

        @Override
        public String toString() {
            return this.descricao;
        }


    }

}
