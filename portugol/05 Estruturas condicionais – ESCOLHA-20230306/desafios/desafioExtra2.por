programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	inteiro primeiroNumero, segundoNumero
	real valorRetorno
	inteiro codOperacao
	
	funcao inicio() {
					
		escreva("------------------------------------------\n\n")
		escreva(" Programa que executa a operação matemática escolhida pelo usuário! \n\n")
		escreva("------------------------------------------\n\n")

		escreva("Informe o primeiro número Ex:(1,2,4,5,6) -> ")
		leia(primeiroNumero)
		
		escreva("Informe o segundo número Ex:(1,2,4,5,6) -> ")
		leia(segundoNumero)
		limpa()
		
		escreva("Informe o código da operação desejada, seguindo o exemplo: \n")
		escreva("1 -> Média entre os números digitados\n")
		escreva("2 -> Diferença entre os números\n")
		escreva("3 -> Produtos entre os números digitados\n")
		escreva("4 -> Divisão do primeiro pelo segundo\n")
		escreva("5 -> Resto da divisão do primeiro pelo segundo\n")
		escreva("6 -> Divisão do segundo pelo primeiro\n")
		escreva("7 -> Resto da divisão do segundo pelo primeiro\n")
		escreva("8 -> Soma dos dois números\n\n")
		escreva("Código desejado: ")
		leia(codOperacao)
		limpa()
		
		escolha(codOperacao) {
			caso 1:
				
				valorRetorno = primeiroNumero + segundoNumero / 2
				
				escreva("------------------------------------------\n\n")
				escreva(" Média entre os números: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 2:
				
				valorRetorno = primeiroNumero - segundoNumero
				
				escreva("------------------------------------------\n\n")
				escreva(" Diferença entre os números: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
			caso 3:
				
				valorRetorno = primeiroNumero * segundoNumero
				
				escreva("------------------------------------------\n\n")
				escreva(" Produto entre os números: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 4: 
				
				valorRetorno = primeiroNumero / segundoNumero
				
				escreva("------------------------------------------\n\n")
				escreva(" Divisão do primeiro pelo segundo: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 5: 
							
				valorRetorno = (primeiroNumero % segundoNumero)
				
				escreva("------------------------------------------\n\n")
				escreva(" Resto da divisão do primeiro pelo segundo: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 6:
			
				valorRetorno = segundoNumero / primeiroNumero
				
				escreva("------------------------------------------\n\n")
				escreva(" Divisão do segundo pelo primeiro: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 7:
			
				valorRetorno = segundoNumero % primeiroNumero
				
				escreva("------------------------------------------\n\n")
				escreva(" Resto da divisão do segundo pelo primeiro: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 8: 
			
				valorRetorno = segundoNumero + primeiroNumero
				
				escreva("------------------------------------------\n\n")
				escreva(" Soma dos números: ", valorRetorno, "\n\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso contrario: 
				escreva(" Informe um código de operação de 1 a 8, exemplo: (1,2,3,4,5,6,7,8). Código informado: ", codOperacao)
		}

		escreva("\n\n")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3594; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */