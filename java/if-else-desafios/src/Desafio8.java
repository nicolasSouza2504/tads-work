//DESAFIO 8
//Você foi contratado para desenvolver um simulador de sistema de recomendação de
//filmes. O sistema deve solicitar ao usuário informações sobre um filme, como nome,
//duração em minutos e classificação indicativa. Com base nessas informações, o
//sistema deve classificar o filme em uma categoria específica, levando em
//consideração a duração e a classificação indicativa. As categorias são:
//● Infantil: Filmes com duração menor que 60 minutos e classificação indicativa
//livre;
//● Adolescente: Filmes com duração entre 60 e 120 minutos e classificação
//indicativa de 10, 12 ou 14 anos;
//● Adulto: Filmes com duração maior que 120 minutos e classificação indicativa
//de 16 ou 18 anos;
//● Não recomendado: Filmes com duração maior que 60 minutos e classificação
//indicativa livre.
//Seu programa deve solicitar as informações do filme ao usuário, fazer as verificações
//necessárias e exibir a categoria do filme de acordo com as regras acima. Caso o filmenão se enquadre em nenhuma categoria, o programa deve exibir uma mensagem
//adequada.

public class Desafio8 extends Desafio {

    //producted by Nicolas Vieira de Souza ADS - 1

    public static void main(String[] args) {

        String nome;
        String tipo;
        Double duracaoMinutos;
        Integer classificaoIndicativa;

        printMensagem(" Programa que recebe as informações de um filme e retorna a sua classificação ");

        System.out.println(" Informe o nome do filme -> ");
        nome = scanner.next();

        System.out.println(" Informe a duração do filme em minutos -> ");
        duracaoMinutos = scanner.nextDouble();

        System.out.println(" Informe a classificação indicativa do filme. 0 para classificação livre -> ");
        classificaoIndicativa = scanner.nextInt();

        if (duracaoMinutos <  60 && classificaoIndicativa == 0) {
            tipo = "Infantil";
        } else if (duracaoMinutos >= 60 && duracaoMinutos <= 120
                && (classificaoIndicativa >= 10 && classificaoIndicativa <= 14)) {
            tipo = "Adolescente";
        } else if (duracaoMinutos > 120 && (classificaoIndicativa >= 16 && classificaoIndicativa <= 18)) {
            tipo = "Adulto";
        } else if (duracaoMinutos > 60 && classificaoIndicativa == 0) {
            tipo = "Não recomendado";
        } else {
            tipo = "Não reconhecido";
        }

        printMensagem(" Tipo do filme " + nome + " -> " + tipo);

    }

}
