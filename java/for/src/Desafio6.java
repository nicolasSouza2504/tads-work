//Prepare um código-fonte para um programa que verifica APENAS os números primos
//de 1 a 100.
//Obs.: pesquise o que são números primos.

import java.util.ArrayList;
import java.util.List;

public class Desafio6 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que printa os números primos de 1 a 100...");

        List<String> numerosPrimos = new ArrayList<>();

        for (int i = 2; i < 100; i++) {

            Boolean primo = true;

            for (int j = 2; j < i; j++) {

                if (i % j == 0) {
                    primo = false;
                }

            }

            if (primo) {
                numerosPrimos.add(String.valueOf(i));
            }

        }

        numerosPrimos.add("\n\n Quantidade números primos -> " + numerosPrimos.size());
        printMensagens(numerosPrimos);

    }

}
