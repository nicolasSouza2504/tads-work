//Crie uma solução que peça um número inteiro de 1 a 12. Depois mostre o mês do
//ano que esse número representa.

import java.util.HashMap;
import java.util.Map;

public class Desafio3 extends Desafio {

    public static void main(String[] args) {

        Integer numeroMes;
        Map<Integer, String> meses = getMeses();

        printMsg(" Solução que retorna o mês do ano baseando se no número informado pelo usuário");

        System.out.println(" Informe o número de um mês -> ");
        numeroMes = scanner.nextInt();

        String mes = meses.get(numeroMes);

        if (mes != null) {
            printMsg(" Mês correspondente -> " + mes);
        } else {
            printMsg(" Informe um número de um mês existente (1 a 12)");
        }

    }

    private static Map<Integer, String> getMeses() {

        Map<Integer, String> meses = new HashMap<Integer, String>();

        meses.put(1, "Janeiro");
        meses.put(2, "Fevereiro");
        meses.put(3, "Março");
        meses.put(4, "Abril");
        meses.put(5, "Maio");
        meses.put(6, "Junho");
        meses.put(7, "Julho");
        meses.put(8, "Agosto");
        meses.put(9, "Setembro");
        meses.put(10, "Outubro");
        meses.put(11, "Novembro");
        meses.put(12, "Dezembro");

        return meses;
    }

}
