programa {

	cadeia nomeAluno
	real notaAvaliacao1, notaAvaliacao2, notaAvaliacao3, mediaBimestre, notaRecuperacao
	logico recuperacao 
	
	funcao inicio() {
			
		escreva("------------------------------------------\n\n")
		escreva(" Programa que cálcula a média de um aluno, baseado no seu desempenho no bimestre \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o nome do aluna Ex:(Lucas, gabriel, Miguel)-> ")
		leia(nomeAluno)
		
		escreva(" Informe a nota da primeira avaliação Ex:(10.0, 5.0, 7.0) -> ")
		leia(notaAvaliacao1)

		escreva(" Informe a nota da segunda avaliação Ex:(10.0, 5.0, 7.0) -> ")
		leia(notaAvaliacao2)

		escreva(" Informe a nota da terceira avaliação Ex:(10.0, 5.0, 7.0) -> ")
		leia(notaAvaliacao3)

		mediaBimestre = (notaAvaliacao1 + notaAvaliacao2 + notaAvaliacao3) / 3

		se (mediaBimestre < 6) {
			escreva(" Informe a nota da recuperação Ex:(10.0, 5.0, 7.0) -> ")	
			leia(notaRecuperacao)
			recuperacao = verdadeiro
		}
		
		limpa()
		
		escreva("------------------------------------------\n\n")
		escreva(" ", nomeAluno, ": ", "\n")
		escreva(" Avaliação 1 -> ", notaAvaliacao1, "\n")
		escreva(" Avaliação 2 -> ", notaAvaliacao2, "\n")
		escreva(" Avaliação 3 -> ", notaAvaliacao3, "\n")
		
		se (mediaBimestre >= 6 e recuperacao == falso) {
			
			escreva(" Média Bimestre -> ", mediaBimestre, "\n")
			escreva(" Situação -> Aprovado", "\n\n")
			
		} senao {
			
			escreva(" Recuperação -> ", notaRecuperacao, "\n")
			
			se (notaRecuperacao > mediaBimestre e notaRecuperacao <= 6) {
				mediaBimestre = notaRecuperacao			
			} senao se (notaRecuperacao > mediaBimestre e notaRecuperacao > 6) {
				mediaBimestre = 6.0
			}
			
			escreva(" Média Bimestre -> ", mediaBimestre, "\n")

			se (mediaBimestre >= 6) {
				escreva(" Situação -> Aprovado", "\n\n")
			} senao {
				escreva(" Situação -> Reprovado", "\n\n")
			}
				
		}
		
		escreva("------------------------------------------\n\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1916; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */