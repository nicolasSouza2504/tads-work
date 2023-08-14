programa {
	//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1
	
	inteiro primeiroNumero, segundoNumero, terceiroNumero, menorNumero
	logico numeroRepetido = falso
	
	funcao inicio() {
		
		escreva("---------- Retorna menor número dentre os 3 informados ----------", "\n\n")

		escreva(" Informe o primeiro número Ex:(1,2,3,4,5) -> ")
		leia(primeiroNumero)
		
		escreva(" Informe o segundo número Ex:(1,2,3,4,5) -> ")
		leia(segundoNumero)
		
		escreva(" Informe o terceiro número Ex:(1,2,3,4,5) -> ")
		leia(terceiroNumero)

		se ((primeiroNumero == segundoNumero ou primeiroNumero == terceiroNumero) 
			ou (segundoNumero == terceiroNumero)) {
			
			numeroRepetido = verdadeiro
		}
		
		limpa()

		se (numeroRepetido) {
			
			escreva("--------------------------------------", "\n")
			escreva(" Não é permitido informar números repetidos! ", "\n")	
			escreva("--------------------------------------", "\n")
			
		} senao {
			
			se (primeiroNumero < segundoNumero e primeiroNumero < terceiroNumero) {
				menorNumero = primeiroNumero
			} senao se (segundoNumero < primeiroNumero e segundoNumero < terceiroNumero) {
				menorNumero = segundoNumero
			} senao se (terceiroNumero < segundoNumero e terceiroNumero < primeiroNumero) {
				menorNumero = terceiroNumero
			}

			escreva("--------------------------------------", "\n")
			escreva(" Menor número informado: ", menorNumero, "\n")	
			escreva("--------------------------------------", "\n")		
			
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 682; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */