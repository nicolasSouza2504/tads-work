//Desenvolva um sistema de votação para uma eleição. O programa terá um menu
//que deve permitir ao usuário digitar o número do candidato de sua escolha, que
//varia de 1 a 5, e em seguida, exibir uma mensagem informando o nome e a
//plataforma política do candidato escolhido.
//Após o usuário digitar o número do candidato, deve-se verificar o número digitado e
//exibir uma mensagem com o nome e a plataforma política do candidato escolhido.
//Caso o número digitado não corresponda a nenhum candidato válido, o programa
//deve exibir uma mensagem de erro.

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Desafio6 extends Desafio {

    public static void main(String[] args) {

        Integer codigo;

        printMsg(" Programa que retorna ao usuário o nome do candidato escolhido e a  plataforma do mesmo; ");

        printMensagens(getCandidatos().stream()
                                      .map(candidato -> " Candidato: " +  candidato.getNome() + " Plataforma: " + candidato.getPlataforma() + " Número: " + candidato.getCodigo())
                                      .collect(Collectors.toList()));

        System.out.println(" Informe o código de um candidato seguindo a lista a cima -> ");
        codigo = scanner.nextInt();

        Candidato candidatoSelecionado = getCandidatos().stream()
                                                        .filter(candidato -> candidato.getCodigo().equals(codigo))
                                                        .findFirst()
                                                        .orElse(null);

        if (candidatoSelecionado != null) {
            printMensagens(" Candidato: " +  candidatoSelecionado.getNome(), " Plataforma: " + candidatoSelecionado.getPlataforma(), " Número: " + candidatoSelecionado.getCodigo());
        } else {
            printMsg(" Código informado não corresponde a um candidato existente! ");
        }

    }

    private static List<Candidato> getCandidatos() {

        List<Candidato> result = new ArrayList<Candidato>();

        result.add(new Candidato("Alcir", "PSDB", 150));
        result.add(new Candidato("Lucas", "PT", 60));
        result.add(new Candidato("Caléo", "PTDOB", 10));
        result.add(new Candidato("Ciro", "PSOL", 667));
        result.add(new Candidato("Lula", "PTB", 666));

        return result;

    }

    public static class Candidato {
        private String nome;
        private String plataforma;
        private Integer codigo;

        Candidato(String nome, String plataforma, Integer codigo) {
            this.nome = nome;
            this.plataforma = plataforma;
            this.codigo = codigo;
        }

        public String getNome() {
            return nome;
        }

        public String getPlataforma() {
            return plataforma;
        }

        public Integer getCodigo() {
            return codigo;
        }

    }
}
