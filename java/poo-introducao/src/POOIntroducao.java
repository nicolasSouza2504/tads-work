import javax.swing.*;
import java.util.Arrays;
import java.util.stream.Collectors;

public class POOIntroducao {

    public static void main(String[] args) {

        int[] valores = new int[10];

        for (int i = 0; i < 10; i++) {
            valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o " + (i + 1) + "° valor: "));
        }

        String repetir;

        int opcao;

        do {

            opcao = Integer.parseInt(JOptionPane.showInputDialog(" O que você deseja ver? "
                    + "\n 1 - Todos os valores"
                    + "\n 2 - Somente o primeiro valor"
                    + "\n 3 - Somente o último valor"
                    + "\n 4 - Ver os valores pares"));

            switch (opcao) {

                case 1:

                    for (int i = 0; i < 10; i++) {
                        JOptionPane.showMessageDialog(null, valores[i], "Valor " + (i + 1), JOptionPane.INFORMATION_MESSAGE);
                    }

                    break;

                case 2:

                    JOptionPane.showMessageDialog(null, valores[0], " Primeiro valor ", JOptionPane.INFORMATION_MESSAGE);

                    break;

                case 3:

                    JOptionPane.showMessageDialog(null, valores[9], " Último valor ", JOptionPane.INFORMATION_MESSAGE);

                    break;

                case 4:

                    String valoresPares = Arrays.stream(valores).filter(n -> n % 2 == 0).mapToObj(num -> String.valueOf(num)).collect(Collectors.joining(", "));

                    JOptionPane.showMessageDialog(null, valoresPares, " Valores Pares", JOptionPane.INFORMATION_MESSAGE);

                    break;

                default:

                    JOptionPane.showMessageDialog(null, "Opção inválida! ", "Erro", JOptionPane.INFORMATION_MESSAGE);

                    break;

            }

            repetir = JOptionPane.showInputDialog("Deseja voltar ao menu? "
                    + "\n Digite S para sim ou outro caractere para encerrar: ");

        } while (repetir.equalsIgnoreCase("s"));

    }

}
