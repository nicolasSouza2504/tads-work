package desafios;
//Para atender às necessidades da empresa de meteorologia "Chuvisco Molhado", será
//desenvolvida uma solução que armazena a temperatura média de cada mês do ano
//em um vetor. Com base nesse vetor, serão calculados os seguintes resultados:
//● A menor temperatura registrada durante o ano;
//● A maior temperatura registrada durante o ano;
//● A média da temperatura registrada durante o ano.

import java.util.Arrays;

public class Desafio4 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe as temperaturas dos meses do ano, e retorna qual foi a maior, menor, e a média...");

        Double[] temperaturas = new Double[12];

        for (int i = 0; i < 12; i++) {

            System.out.println(" Informe a temperatura média do "  + (i + 1) + "° mês -> " );
            temperaturas[i] = scanner.nextDouble();

        }

        printMensagens(" Temperatura máxima -> " + Arrays.stream(temperaturas).mapToDouble(d -> d).max().orElse(0d),
                       " Temperatura mínima -> " + Arrays.stream(temperaturas).mapToDouble(d -> d).min().orElse(0d),
                       " Temperatura média -> " + Arrays.stream(temperaturas).mapToDouble(d -> d).sum() / temperaturas.length);


    }

}
