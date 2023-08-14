programa {
	
	
	funcao inicio() {
						
		escreva("------------------------------------------\n\n")
		escreva(" Programa que mostra a idade de um usuário baseando se no ano de nascimento \n\n")		
		escreva("------------------------------------------\n\n")

		inteiro anoNascimento = leiaAnoNascimento()
		imprimeIdade(anoNascimento)
		
	}

	funcao inteiro  leiaAnoNascimento() {
	 	inteiro anoNascimento
		escreva(" Informe o ano nascimento do usuário -> ")
		leia(anoNascimento)
		retorne anoNascimento		
	}

	funcao imprimeIdade(inteiro anoNascimento) {
		limpa()
		escreva(" Idade: ", 2021 - anoNascimento, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 340; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */