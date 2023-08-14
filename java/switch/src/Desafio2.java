
//Crie um programa que peça para o usuário selecionar uma figura geométrica de sua
//escolha:
//● Círculo;
//● Quadrado;
//● Retângulo;
//● Triângulo.
//Em seguida, peça os dados necessários para calcular e exibir a área da figura
//selecionada.

public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        Double baseForma, alturaForma, raioForma, ladoForma, maiorLadoForma, menorLadoForma, areaForma;
        String tipoForma;

        printMsg(" Programa que pede ao usuário um tipo de figura, as informações necessárias para calcular a sua área... ");


        System.out.println(" Informe a forma. Exemplo(retangulo, triangulo, circulo, quadrado, trapezio) -> ");
        tipoForma = scanner.next();

        switch (tipoForma) {

            case "retangulo":

                System.out.println(" Informe a base do Retângulo. Ex:(1.0,2.5) -> ");
                baseForma = scanner.nextDouble();

                System.out.println(" Informe a altura do Retângulo. Ex:(1.0,2.5) -> ");
                alturaForma = scanner.nextDouble();

                areaForma = baseForma * alturaForma;

                printMsg("Área do Retângulo -> " + areaForma);

                break;

            case "triangulo":

                System.out.println(" Informe a base do Triângulo. Ex:(1.0,2.5) -> ");
                baseForma = scanner.nextDouble();

                System.out.println(" Informe a altura do Triângulo. Ex:(1.0,2.5) -> ");
                alturaForma = scanner.nextDouble();

                areaForma = baseForma * (alturaForma / 2);

                printMsg(" Área do Triângulo -> "+  areaForma + "m ");

                break;

            case "circulo":

                System.out.println(" Informe o raio do Círculo. Ex:(1.0,2.5) -> ");
                raioForma = scanner.nextDouble();

                areaForma = 3.14 * raioForma * raioForma;

                printMsg(" Área do Círculo -> "+  areaForma + "m ");

                break;

            case "quadrado":

                System.out.println(" Informe o tamanho do lado do Quadrado. Ex:(1.0,2.5) -> ");
                ladoForma = scanner.nextDouble();

                areaForma = ladoForma * ladoForma;

                printMsg(" Área do Quadrado -> "+  areaForma + "m ");

                break;

            case "trapezio":

                System.out.println(" Informe o tamanho do maior lado do Trapézio. Ex:(1.0,2.5) -> ");
                maiorLadoForma = scanner.nextDouble();

                System.out.println(" Informe o tamanho do menor lado do Trapézio. Ex:(1.0,2.5) -> ");
                menorLadoForma = scanner.nextDouble();

                System.out.println(" Informe a altura do Trapézio. Ex:(1.0,2.5) -> ");
                alturaForma = scanner.nextDouble();

                areaForma = (maiorLadoForma + menorLadoForma) * alturaForma /2;

                printMsg(" Área do Trapézio -> "+  areaForma + "m ");

                break;

            default:

                printMsg(" Informe uma forma válida dentre as dadas de exemplo! \n\n");

                break;

        }

    }

}
