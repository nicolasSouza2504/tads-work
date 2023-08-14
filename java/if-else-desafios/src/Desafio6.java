//Construa um programa que solicite ao usuário três comprimentos de lado e, em
//seguida, verifique se é possível formar um triângulo. Se sim, exiba o tipo de triângulo.
//Obs.: pesquise o que são triângulos equiláteros, isósceles e escalenos.

// escaleno, quando todos os lados possuem medidas diferentes; isósceles, quando existem dois lados que possuem mesma medida; ou equilátero, quando todos os lados são congruentes.

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Desafio6 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        Double lado1, lado2, lado3;
        Map<Long, String> tipos = getTipos();

        printMensagem("Programa que recebe comprimentos dos lados de um triangulo e retorna o tipo de triangulo. ");

        System.out.println(" Informe o tamanho do primeiro lado do triangulo -> ");
        lado1 = scanner.nextDouble();

        System.out.println(" Informe o tamanho do segundo lado do triangulo -> ");
        lado2 = scanner.nextDouble();

        System.out.println(" Informe o tamanho do terceiro lado do triangulo -> ");
        lado3 = scanner.nextDouble();

        Boolean valido = lado1 < (lado2 + lado3) && lado2 < (lado1 + lado3) && lado3 < (lado1 + lado2);

        if (valido) {

            double[] lados = {lado1, lado2, lado3};

            String tipo = tipos.get(Arrays.stream(lados).distinct().count());

            printMensagens(" Triângulo informado é válido! ", "\n Triângulo é do tipo " + tipo);

        } else {
            printMensagem(" Triangulo inválido! ");
        }

    }

    private static Map<Long, String> getTipos() {

        Map<Long, String> tipos = new HashMap<>();

        tipos.put(1l, "equilátero");
        tipos.put(2l, "isósceles");
        tipos.put(3l, "escaleno");

        return tipos;

    }

}
