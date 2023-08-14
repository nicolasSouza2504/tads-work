programa {

	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	real primeiroNumeroOperacao, segundoNumeroOperacao, resultadoOperacao
	caracter operacaoSelecionada
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa faz o cálculo do primeiro número pelo segundo, baseado na operação desejada\n\n")
		escreva("------------------------------------------\n\n")

		escreva("Informe a operação a ser realizada Ex:(soma -> +, subtração -> -, multiplicação -> *, divisão -> / ) -> ")
		leia(operacaoSelecionada)

		escreva("Informe o valor1 para a operação Ex: (1.0,2.0,3,4)-> ")
		leia(primeiroNumeroOperacao)

		escreva("Informe o valor2 para a operação Ex: (1.0,2.0,3,4)-> ")
		leia(segundoNumeroOperacao)
		limpa()
		
		escolha (operacaoSelecionada) {
		
			caso '+':
			
				resultadoOperacao = primeiroNumeroOperacao + segundoNumeroOperacao
				escreva("Resultado operação -> ", resultadoOperacao)
				
				pare
				
			caso '-':
			
				resultadoOperacao = primeiroNumeroOperacao - segundoNumeroOperacao
				escreva("Resultado operação -> ", resultadoOperacao)
				
				pare
				
			caso '/':
			
				se (segundoNumeroOperacao == 0) {
					escreva("Não permitido informar o zero para a operação de divisão!! ")	
				} senao {
					resultadoOperacao = primeiroNumeroOperacao / segundoNumeroOperacao
					escreva("Resultado operação -> ", resultadoOperacao)
				}
				
				pare
				
			caso '*':	
										
				resultadoOperacao = primeiroNumeroOperacao * segundoNumeroOperacao
				escreva("Resultado operação -> ", resultadoOperacao)
				
				pare
				
			caso contrario:
				escreva("Informe uma operação que exista no exemplo: (+,-,/,*)")
				
		}

		escreva("\n\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */