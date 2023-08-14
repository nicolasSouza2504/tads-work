

//Construa uma solução que peça ao usuário sua idade e verifique se ele é:
//● Uma criança, com idade abaixo de 18 anos;
//● Um jovem, com idade entre 18 e 30 anos;
//● Um adulto, com idade entre 30 e 59 anos;
//● Um idoso, com idade a partir de 60 anos.

public class Desafio4 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        Integer idade;
        printMensagem(" Programa que recebe a idade e classifica uma pessoa como criança, jovem, adulto, idoso");

        try {

            System.out.println(" Informe a idade -> ");
            idade = validarIdade(scanner.nextInt());

            String classificacaoIdade;

            //validar valores

            if (idade < 18) {
                classificacaoIdade = "Criança";
            } else if (idade <= 30) {
                classificacaoIdade = "Jovem";
            } else if (idade <= 59) {
                classificacaoIdade = "Adulto";
            } else {
                classificacaoIdade = "Idoso";
            }

            printMensagem("Classificação idade: " + classificacaoIdade);

        } catch (Exception e) {
            printMensagens(e.getMessage());
        }


    }

    private static Integer validarIdade(int i) throws Exception {

        if (i < 0) throw new Exception(" Informe uma idade válida! ");

        return i;

    }

}
