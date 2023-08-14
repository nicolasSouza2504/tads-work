
//Um professor deseja ter uma aplicação que calcule a média PONDERADA de seus
//cinco alunos durante o bimestre. O bimestre é composto por três notas, portanto, é necessário criar dois vetores para armazenar cada uma das notas dos alunos. Em
//seguida, outro vetor deve ser criado para armazenar o resultado da média dos alunos.

package desafios.desafio5;

import desafios.Desafio;
import java.util.ArrayList;
import java.util.List;


public class Desafio5 extends Desafio {

    public static void main(String[] args) {

        printMsg("Programa que cálcula a média ponderada do bimestre de 5 alunos");
        List<Aluno> alunos = new ArrayList<>();

        for (int i = 0; i < 2; i++) {
            alunos.add(new Aluno());
        }

        alunos.forEach(aluno -> {
            printMsg(aluno.getNome() + " -> " + aluno.getMediaPonderada());
        });

    }

}
