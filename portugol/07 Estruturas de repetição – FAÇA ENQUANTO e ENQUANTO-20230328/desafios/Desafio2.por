programa {	

//producted by nicolas vieira de souza ADS - 1

	inteiro primeiroNumeroSoma, segundoNumeroSoma, resultadoReal, resultadoInformado
	inteiro tentativas = 1
	logico acertou = falso
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa faz a soma entre números informados pelo usuário, e retorna se ele acertou a soma dos mesmos.\n\n")
		escreva("------------------------------------------\n\n")

		escreva("Informe o primeiro número para a soma. Ex.:(1,2,4) -> ")
		leia(primeiroNumeroSoma)
		limpa()
		
		escreva("Informe o segundo número para a soma. Ex.:(1,2,4) -> ")
		leia(segundoNumeroSoma)
		limpa()

		resultadoReal = primeiroNumeroSoma + segundoNumeroSoma
		
		faca {
			
			escreva("Informe o resultado da soma do primeiro número pelo segundo -> ")
			leia(resultadoInformado)
			limpa()
			
			escreva("======RESULTADO======\n\n")
			
			se (resultadoReal == resultadoInformado) {
				
				escreva("Correto, soma dos números é ", resultadoReal, "\n")
				escreva("Número de Tentativas -> ", tentativas, "\n\n")
				acertou = verdadeiro
			} senao {						
				escreva("Você errou! \n\n")
				tentativas ++
			}
			
			escreva("======RESULTADO======\n\n")
			
		} enquanto (acertou == falso)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 62; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */