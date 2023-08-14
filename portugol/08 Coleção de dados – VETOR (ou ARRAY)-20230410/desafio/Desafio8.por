programa {

//producted by nicolas vieira de souza ADS - 1

	inteiro values[10]

	funcao inicio() {
			
		escreva("------------------------------------------\n\n")
		escreva("Solução que armazena 10 valores em uma lista, e retorna o menor valor da lista\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 10; i ++) {
			escreva("Informe o ", i + 1, "° número para a lista de números -> ")
			leia(values[i])
		}

		escreva("\n\n=======RESULTADO=======\n\n")
		escreva(" Menor valor lista -> ", retornaMenorNumeroLista())
		escreva("\n\n=======RESULTADO=======\n\n")
			
	}

	funcao inteiro retornaMenorNumeroLista() {
		
		inteiro menorValor = values[0]
		
		para (inteiro i = 0; i < 10; i++) {
			
			se (menorValor > values[i]) {
				menorValor = values[i]
			}
			
		}
		
		retorne menorValor
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 253; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */