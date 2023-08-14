//DESAFIO 5
//Construa um programa que solicita ao usuário uma frase. Ao final, indique quantas
//vogais, consoantes, espaços e outros caracteres compõem essa frase.

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class Desafio5 extends Desafio {

    public static void main(String[] args) {

        String frase;
        Integer totalConsoantes, totalVogais, totalEspacos, totalOutros;
        List<Character> vogais = getVogais();

        printMsg(" Programa que solicita ao usuário uma frase. Ao final, indique quantas vogais, consoantes, espaços e outros caracteres compõem essa frase... ");

        System.out.println(" Informe uma frase -> ");
        frase = scanner.nextLine();


        if (frase != null && frase.length() != 0) {

            totalEspacos = new Long(frase.chars()
                    .filter(c -> c == ' ')
                    .count())
                    .intValue();

            totalVogais = new Long(frase.chars()
                    .filter(c -> vogais
                            .stream()
                            .anyMatch(vo -> vo.charValue() == c))
                    .count())
                    .intValue();

            totalOutros = new Long(frase.chars()
                    .filter(c -> !Pattern.compile("[a-zA-z ]").matcher(new Character((char) c).toString()).find())
                    .count())
                    .intValue();

            totalConsoantes = frase.length() - totalVogais - totalOutros - totalEspacos;

            printMensagens(" Total Consoantes -> " + totalConsoantes, " Total Outros -> " + totalOutros, " Total Espacos -> " + totalEspacos, " Total vogais -> " + totalVogais);

        } else {
            printMsg(" Informe uma frase válida!");
        }

    }

    private static List<Character> getVogais() {

        List<Character> vogais = new ArrayList<>();

        vogais.add(new Character('a'));
        vogais.add(new Character('e'));
        vogais.add(new Character('i'));
        vogais.add(new Character('o'));
        vogais.add(new Character('u'));

        return  vogais;

    }

}
