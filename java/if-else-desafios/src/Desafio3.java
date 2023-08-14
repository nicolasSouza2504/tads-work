import java.util.HashMap;
import java.util.Map;

public class Desafio3 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        Integer diaNumeric;
        Map<Integer, String> mapDias = new HashMap<Integer, String>();

        mapDias.put(1, "Segunda");
        mapDias.put(2, "Terça");
        mapDias.put(3, "Quarta");
        mapDias.put(4, "Quinta");
        mapDias.put(5, "Sexta");
        mapDias.put(6, "Sábado");
        mapDias.put(7, "Domingo");

        printMensagem(" Programa que recebe um número de 1 a 7 e retorna o dia da semana! ");

        try {

            System.out.println(" Informe um número de 1 a 7 -> ");
            diaNumeric = validarDia(scanner.nextInt());

            String diaStr = mapDias.get(diaNumeric);

            printMensagem("Dia correspondente: " + diaStr);

        } catch (Exception e) {
            printMensagem(e.getMessage());
        }

    }

    private static Integer validarDia(int i) throws Exception {

        if (i < 0 || i > 7) throw new Exception(" Informe um número de 1 a 7");

        return i;

    }
}
