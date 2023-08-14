//Você deve construir uma calculadora básica em programação. O programa deve
//solicitar ao usuário que digite dois números e a operação matemática que deseja
//realizar (adição, subtração, multiplicação ou divisão). Em seguida, o programa deve
//exibir o resultado da operação matemática escolhida. O programa deve continuar em
//execução até que o usuário decida encerrá-lo. Para encerrar o programa, o usuário
//deve digitar APENAS “Continuar” ou “Finalizar”. Certifique-se de que o programa lide
//com erros, como divisão por zero

public class Desafio3 extends Desafio {

    static Double num1, num2;
    static Boolean repeat = false;


    public static void main(String[] args) {

        System.out.println(" =Cálculadora= ");

        do {

            try {

                String operation = "";
                System.out.println(" Informe a operação desejada seguindo o exemplo -> ");
                printMensagens(" Multiplicação -> * ", " Adição -> + ", " Subtração -> - ", " Divisão / ");
                operation = scanner.nextLine();


                switch (operation) {


                    case "*":

                        readNumbers(false);
                        printMensagens(" Resultado -> ", num1 + "x" +  num2 + " -> " + (num1 * num2));

                        break;

                    case "+":

                        readNumbers(false);
                        printMensagens(" Resultado -> ", num1 + "+" +  num2 + " -> " + (num1 + num2));

                        break;

                    case "-":

                        readNumbers(false);
                        printMensagens(" Resultado -> ", num1 + "-" +  num2 + " -> " + (num1 - num2));

                        break;

                    case "/":

                        readNumbers(true);
                        printMensagens(" Resultado -> ", num1 + "/" +  num2 + " -> " + (num1 / num2));

                        break;

                    default:

                        System.out.println("===INFORME UMA OPERAÇÃO VÁLIDA===");
                        msgRepeat();

                        break;

                }

                msgRepeat();
                operation = "";

            } catch (Exception e) {

                printMensagens(e.getMessage());
                msgRepeat();

            }



        } while (repeat);

    }

    private static void msgRepeat() {

        System.out.println(" Deseja continuar cálculando ? (Continuar -> Sim, '' -> Não) ");
        String continuar = scanner.nextLine();

        repeat =  continuar.equalsIgnoreCase("continuar")|| continuar.equalsIgnoreCase("sim") ;

    }

    public static void readNumbers(Boolean division) throws Exception {


        System.out.println(" Informe o primeiro numero -> ");
        num1 = scanner.nextDouble();
        scanner.nextLine();

        System.out.println(" Informe o segundo numero -> ");
        num2 = scanner.nextDouble();
        scanner.nextLine();

        if (division) validateNumber();

    }

    public static void validateNumber() throws Exception {

        if (num2 == 0) throw new Exception(" Impossível realizar divisões por zero! \n");

    }
}
