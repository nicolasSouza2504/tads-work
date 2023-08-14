programa {
	
	cadeia nomeCandidato
	inteiro idadeCandidato
	logico cursoTeorico, cursoPratico
	logico apto = verdadeiro
	
	funcao inicio() {
		
		escreva("------------------------------------------\n")
		escreva("Programa que verifica a aptidão do candidato para dirigir um veículo auto-motor\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o nome do candidato Ex:(Nico, Gabriel) -> ")
		leia(nomeCandidato)

		escreva("\n")
		
		escreva(" Informe a idade do candidato -> ")
		leia(idadeCandidato)

		escreva(" Informe se o usuário realizou o curso teórico Ex:(verdadeiro, falso) -> ")
		leia(cursoTeorico)

		escreva(" Informe se o usuário realizou o curso prático Ex:(verdadeiro, falso) -> ")
		leia(cursoPratico)

		se (idadeCandidato < 18 ou cursoTeorico == falso ou cursoPratico == falso) {
			apto = falso
		}

		limpa()
		
		se (apto) {
			escreva("------------------------------------------\n")
			escreva(" Candidato está apto para dirigir um veiculo auto-motor\n")
			escreva("------------------------------------------\n\n")
		} senao {
			escreva("------------------------------------------\n")
			escreva(" Candidato não está apto para dirigir um veiculo auto-motor\n")
			escreva("------------------------------------------\n\n")
		}

		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */