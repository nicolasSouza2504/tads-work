programa {
	
	cadeia nome
	inteiro idade 
	
	funcao inicio() {
						
		escreva("------------------------------------------\n\n")
		escreva(" Programa que imprime o nome e idade informados pelo usuário \n\n")		
		escreva("------------------------------------------\n\n")

		escreva(" Informe um nome -> ")
		leia(nome)

		escreva(" Informe a idade -> ")
		leia(idade)

		exibirIdadeNome(nome, idade)
		
	}

	funcao exibirIdadeNome(cadeia nome, inteiro idade) {
		
		limpa()
		
		escreva("Nome: ", nome, "\n")
		escreva("Idade: ", idade, "\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 382; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */