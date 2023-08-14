
//Para atender às necessidades de uma empresa, é preciso encontrar uma solução que
//permita a inserção de 10 valores numéricos reais em um vetor. O resultado desejado
//é que esses valores sejam impressos em ordem inversa àquela em que foram
//armazenados.

package desafios;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class Desafio6 extends Desafio  {

    public static void main(String[] args) {

        printMsg(" Programa que imprime 10 valores na ordem inversa à que foram informados;");

        List vetores = new ArrayList();

        for (int i = 0; i < 10; i++) {

            System.out.println(" Informe o " + (i + 1) + "° número -> ");
            vetores.add(scanner.nextInt());

        }

        Collections.reverse(vetores);

        printMsg((String) vetores.stream().map(n -> String.valueOf(n)).collect(Collectors.joining(", ")));

    }

}
