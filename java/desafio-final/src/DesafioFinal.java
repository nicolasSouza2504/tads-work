//Você deverá controlar as adoções de um animal a sua escolha (cão, gato,
//pássaro, peixe etc.). Para isso, você deve:
//1.Deixar pré-cadastrados os dados de 3 raças;
//2.Realizar o cadastro de 3 animais por raça, tendo como dados:
//a.Nome;
//b.Informações sobre o comportamento (Ex.: cão calmo, gato brincalhão);
//c.Indicar se o animal foi adotado ou não.
//3.Criar as seguintes listas para visualização:
//a.Todos os animais;
//b.Animais por raça;
//c.Animais disponíveis para adoção.

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class DesafioFinal extends Desafio {

    public static void main(String[] args) {

        List<Cachorro> cachorros = new Cachorro().getCachorrosDefault();
        String opcao;

        printMsg(" Programa que exibe animais para adoção de acordo com a seleção do usuário...");

        Boolean repeat = false;

        do {

            printMensagens("Informe uma opção para visualização \n\n", "a -> Todos os animais", "b -> Animais por raça", "c -> Animais disponíveis para adoção.");
            opcao = scanner.nextLine();

            switch (opcao) {

                case "a":

                    printMsg(" Animais Adoção ");

                    printMensagens(cachorros.stream()
                            .map(animal -> "Nome: " + animal.getNome() +
                                    "; \nRaça: " + animal.getRaca() + "; \nComportamento: " + animal.getComportamento() +
                                    "; \nAdotado: " + (animal.getAdotado() ? " Sim " : " Não ") + "\n\n")
                            .collect(Collectors.toList()));

                    repeat = msgRepeat();

                    break;

                case "b":

                    Map<String, List<Cachorro>> animaisPorTipo = cachorros.stream().collect(Collectors.groupingBy(Cachorro::getRaca));

                    for (Map.Entry<String, List<Cachorro>> entrySet : animaisPorTipo.entrySet()) {

                        printMsg("Tipo: " + entrySet.getKey());

                        printMensagens(entrySet.getValue().stream()
                                                          .map(animal -> "Nome: " + animal.getNome() +
                                                                "; \nRaça: " + animal.getRaca() + "; \nComportamento: " + animal.getComportamento() +
                                                                "; \nAdotado: " + (animal.getAdotado() ? " Sim; " : " Não; ") + "\n\n")
                                                          .collect(Collectors.toList()));

                    }

                    repeat = msgRepeat();

                    break;

                case "c":

                    printMensagens(cachorros.stream()
                                                .filter(c -> !c.getAdotado())
                                                .map(cachorro -> "Nome: " + cachorro.getNome() +
                                                        "; \nRaça: " + cachorro.getRaca() + "; \nComportamento: " + cachorro.getComportamento() +
                                                        "; \nAdotado: " + (cachorro.getAdotado() ? " Sim; " : " Não; ") + "\n\n")
                                                .collect(Collectors.toList()));

                    repeat = msgRepeat();

                    break;

                default:

                    printMsg(" Informe uma opção válida (a, b, c)");
                    repeat = true;

                    break;
            }


        } while (repeat);

    }

    public static Boolean msgRepeat() {

        System.out.println(" Deseja exibir novamente? (true, false)");
        return scanner.nextBoolean();

    }
}
