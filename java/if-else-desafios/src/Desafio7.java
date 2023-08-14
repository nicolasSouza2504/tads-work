//Você está construindo uma solução para calcular o valor final do salário de um
//colaborador. Portanto, calcule o salário de um colaborador, sabendo que:
//• A jornada de trabalho é de 40 horas semanais, ou 160 horas mensais;
//• Caso haja horas extras, o valor a ser pago é de 50% a mais do valor normal da hora
//para cada hora extra realizada.

public class Desafio7 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        Double horasTrabalhadas;
        Double precoHora;
        Double horasExtras = 0d;
        Double total;

        printMensagem(" Programa que cálcula o salário final de um colaborador ");

        try {

            System.out.println(" Informe a quantidade de horas trabalhadas no mês -> ");
            horasTrabalhadas = validarValores(scanner.nextDouble());

            System.out.println(" Informe o preço da sua hora de trabalho");
            precoHora = scanner.nextDouble();

            if (horasTrabalhadas > 160) {

                horasExtras = horasTrabalhadas - 160;
                horasTrabalhadas = horasTrabalhadas - horasExtras;

            }

            total = horasTrabalhadas * precoHora;
            total += horasExtras * (precoHora + (precoHora * 0.5));

            printMensagem(" Salário final -> " + total);

        } catch (Exception e) {
            printMensagens(e.getMessage());
        }

    }

    private static Double validarValores(double v) throws Exception {

        if (v < 0) throw new Exception(" Informe valores válidos! ");

        return v;

    }

}
