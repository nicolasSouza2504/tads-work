//DESAFIO 2
//Construa um código capaz de solicitar ao usuário uma nota de 0 a 10. Se ele tirou: a
//partir 7 está aprovado, entre 5 e 6 está em recuperação, abaixo de 5 está reprovado.

public class Desafio2 extends Desafio {

    public static void main(String[] args) {

        printMsg(" Programa que recebe uma nota, e baseando-se nesta, retorna se o usuário está aprovado, reprovado, ou em recuperação;");
        Integer nota;

        printMsg(getResultado(getNota()));

    }

    private static String getResultado(Integer nota) {

        if (nota > 7) {
            return Resultado.APROVADO.toString();
        } else if (nota > 5) {
            return Resultado.RECUPERACAO.toString().toString();
        } else {
            return Resultado.REPROVADO.toString();
        }
    }

    private static Integer getNota() {

        Integer nota;

        System.out.println("Informe uma nota -> ");
        nota = scanner.nextInt();

        if (nota > 10 || nota < 0) {

            System.out.println(" Informe uma nota de 0 a 10. Nota informada -> " + nota);

            return getNota();

        }

        return nota;
    }


    enum Resultado {

        APROVADO("Usuário Aprovado"), REPROVADO("Usuário Reprovado"), RECUPERACAO("Usuário em Recuperação");

        private String desc;

        Resultado(String desc) {
            this.desc = desc;
        }

        @Override
        public String toString() {
            return this.desc;
        }

    }
}
