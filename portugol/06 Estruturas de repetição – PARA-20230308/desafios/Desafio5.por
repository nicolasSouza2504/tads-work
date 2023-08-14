programa {

	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	inteiro repeticao
	inteiro primeiroValor = 0
	inteiro segundoValor = 1
	inteiro somaValores
	
	funcao inicio() {

		escreva("------------------------------------------\n\n")
		escreva(" Programa que recebe a quantidade de repetições desejadas pelo usuário, e replica uma lógica de exibição \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o número de repetições desejadas. Exemplo(1,2,3,4,5). -> ") 
		leia(repeticao)
		limpa()

		para (inteiro i = 0; i < repeticao; i++) {
			
			somaValores = primeiroValor + segundoValor
			escreva(primeiroValor, " + ", segundoValor, " = ", somaValores, "\n\n")

			primeiroValor = segundoValor
			segundoValor = somaValores
			
		}
		
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