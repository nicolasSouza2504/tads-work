//Primeiramente, peça uma medida em metros ao usuário. Depois, pergunte para qual
//unidade de medida ele deseja converter: centímetros, polegadas, pés ou
//quilômetros. Ao final, apresente o valor da conversão.Obs.: pesquise para realizar a conversão para centímetros, polegadas, pés e
//quilômetros.

public class Desafio5 extends Desafio {

    public static void main(String[] args) {

        Double metros;
        String tipo;

        printMsg(" Programa que retorna a medida informada em metros pelo usuário convertida para o tipo escolhido:  centímetros, polegadas, pés ou quilômetros");

        try {

            System.out.println(" Informe um número em metros (1,2,3,4,5)");
            metros = validarValores(scanner.nextDouble());

            printMensagens("Centímetro -> C", "Polegada -> PO", "Pés -> PE", "Quilômetros -> KM ");
            System.out.println(" Informe o tipo escolhido para conversão do valor seguindo o exemplo ->  ");

            tipo = scanner.next();

            switch (tipo) {

                case "C":

                    printMsg("Valor convertido para centímetros -> " + (metros * 100) + "cm");

                    break;

                case "PO":

                    printMsg(" Valor convertido para polegada -> " + (metros * 39.3701) + "pol");

                    break;

                case "PE":

                    printMsg(" Valor convertido para pés -> " + (metros * 3.28084) + "pés");

                    break;

                case "KM":

                    printMsg(" Valor convertido para km -> " + (metros / 1000) + "km ");

                    break;

                default:

                    printMsg(" Informe o tipo seguindo os exemplos (KM, C, PO, PE)");

                    break;

            }

        } catch (Exception e) {
            printMensagens(e.getMessage());
        }


    }

    private static Double validarValores(double v) throws Exception {

        if (v < 0) throw new Exception(" Informe valores válidos! ");

        return v;

    }

}
