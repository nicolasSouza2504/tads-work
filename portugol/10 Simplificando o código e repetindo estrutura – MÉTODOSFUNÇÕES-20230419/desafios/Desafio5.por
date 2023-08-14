programa {	

	//producted by nicolas vieira de souza ADS - 1
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna se o número informado é 0 ou + ou - \n\n")		
		escreva("------------------------------------------\n\n")

		inteiro numero = leNumero()
		exibirResultado(numero)
	}

	funcao inteiro leNumero() {

		inteiro numero
		
		escreva(" Informe um número -> ")
		leia(numero)
		
		retorne numero
	}

	funcao exibirResultado(inteiro numero) {
		
		limpa()
		
		cadeia resultado 

		se (numero > 0) {
			resultado = "Positivo!"
		} senao se (numero < 0) {
			resultado = "Negativo!"
		} senao {
			resultado = "Zero!"
		}
		
		escreva(" O número informado é -> ", resultado, "\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */