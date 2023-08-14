programa {

	//producted by nicolas vieira de souza ADS - 1
	
	logico repetir
	inteiro idade, nota
	inteiro quantMasc = 0
	inteiro quantfem = 0
	inteiro totalIdades = 0 
	inteiro totalNota10 = 0
	inteiro quantFemininoNotaAbaixoDe5 = 0
	inteiro quantidadeMasculinoNotaAbaixoDe5 = 0

	caracter sexo
	
	funcao inicio() {

		escreva("------------------------------------------\n\n")
		escreva(" Programa que realiza uma pesquisa com 'N' pessoas sobre a opinião em relação a pré estreia de um filme\n\n")		
		escreva("------------------------------------------\n\n")

		faca {
			
			repetir = falso 
			
			escreva(" Informe o sexo do entrevistado seguindo o exemplo. (F -> feminino, M -> masculino) -> ")
			leia(sexo)
				
			escreva(" Informe a idade do entrevistado. Ex:(1,4,19) -> ")
			leia(idade)

			escreva(" Informe uma nota para o filme de 0 a 10  -> ")
			leia(nota)
		
			escolha (sexo) {
				
				caso 'F':
					
					quantfem ++ 		
					 
					se (nota < 5) {
					 	quantFemininoNotaAbaixoDe5++
					}
					 
					pare
					
				caso 'M':
				
					quantMasc++
				
					se (nota < 5) {
						quantidadeMasculinoNotaAbaixoDe5++
					}
					
					pare
					
				caso contrario: 
				
					limpa()
					escreva("\n\nINFORME UM SEXO VÁLIDO: F -> feminino, M -> masculino. Sexo informado: ",  sexo, "\n\n")
					repetir = verdadeiro
					
					pare
			}

			se (nota >= 10) {
				totalNota10 ++				
			}

			se (repetir == falso) {
				escreva(" Há próxima pessoa para a pesquisa? (verdadeiro, falso) \n")
				leia(repetir)			
			}

			totalIdades += idade
			limpa()
			
		} enquanto(repetir)

		inteiro quantTotal = quantMasc + quantfem
		inteiro mediaIdades = totalIdades / quantTotal 
		limpa()
		
		escreva("\n\n=====RESULTADO-PESQUISA=====\n\n")
		escreva(" Média idade participantes -> ", mediaIdades, "\n")
		escreva(" Total notas 10 -> ", totalNota10, "\n")
		escreva(" Total notas abaixo de 5 participantes mulheres -> ", quantFemininoNotaAbaixoDe5, "\n")
		escreva(" Total notas abaixo de 5 participantes homens -> ", quantidadeMasculinoNotaAbaixoDe5, "\n")
		escreva("\n=====RESULTADO-PESQUISA=====\n\n")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */