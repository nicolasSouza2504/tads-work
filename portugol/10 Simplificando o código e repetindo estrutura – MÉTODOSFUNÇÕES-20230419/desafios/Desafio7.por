programa {
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna se o número informado é primo \n\n")		
		escreva("------------------------------------------\n\n")
		
		inteiro numero = leNumero()
		exibirResultado(numero)
			
	}

	funcao inteiro leNumero() {

		inteiro numero
		
		escreva(" Informe um número -> ")
		leia(numero)

		se (numero < 0) {
			
			limpa()
			
			escreva(" Informe um número positivo! \n")
			leNumero()
			
		}
		
		retorne numero
	}

	funcao exibirResultado(inteiro numero) {
		
		limpa()

		logico primo = numeroPrimo(numero)

		se (primo) {		
			escreva("O número informado é primo! \n\n")
		} senao {
			escreva("O número informado não é primo! \n\n")
		}
		
	}

	funcao logico numeroPrimo(inteiro numero) {
		
		logico primo = verdadeiro

		para (inteiro i = 2; i < numero; i ++) {
			
			se (numero % i == 0) {
				primo = falso
			}
			
		}
		
		retorne primo
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 753; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */