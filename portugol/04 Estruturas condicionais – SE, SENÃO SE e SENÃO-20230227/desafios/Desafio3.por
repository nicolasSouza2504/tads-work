programa {

//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1

	inteiro primeiroNumero, segundoNumero, quociente, restoDivisao
	logico sucesso = verdadeiro
	
	funcao inicio() {
		
		escreva(" DESAFIO -- Você deve informar dois números, em que o resultado da divisão do primeiro pelo segundo deve ser ímpar e maior que 3, e o resto da divisão dos mesmos deve ser par! -- \n\n")

		escreva("Informe o primeiro número. Ex: (1,2,3,4) -> ")
		leia(primeiroNumero)
		
		escreva("Informe o segundo número. Ex: (1,2,3,4) -> ")
		leia(segundoNumero)

		quociente = (primeiroNumero / segundoNumero)
		
		limpa()
		
		se ((quociente > 3) e quociente % 2 != 0) {
			escreva("Quociente ímpar e maior que 3 --> Quociente: ", quociente, " :) \n")
		} senao se (quociente % 2 == 0) {
			sucesso = falso
			escreva("Quociente par --> Quociente: ", quociente, " :( \n")
		}

		restoDivisao = primeiroNumero % segundoNumero
		
		se (restoDivisao % 2 == 0) {
			escreva("Resto da divisão é par --> Resto divisão: ", restoDivisao, " :) \n")	
		} senao {
			sucesso = falso
			escreva("Resto da divisão é impar --> Resto divisão: ", restoDivisao, " :( \n")	
		}

		se (sucesso) {
			escreva("Você venceu o desafio!!!  :) ")
		} senao {
			escreva("Você perdeu o desafio!!!  :( ") 
		}

		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */