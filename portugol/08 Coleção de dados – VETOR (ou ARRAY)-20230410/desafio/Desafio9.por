programa {
	
	//producted by nicolas vieira de souza ADS - 1
		
	inteiro numerosInformados[5]
	inteiro valorMultiplicador
	inteiro valoresMultiplicacao[5]
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que realiza a multiplicação dos itens de uma lista \n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 5; i ++) {
			escreva("Informe o ", i + 1 , "° número da lista de números para multiplicar -> ")
			leia(numerosInformados[i])
		}

		escreva("\nInforme o valor para multiplicar os itens da lista -> ")
		leia(valorMultiplicador)

		para (inteiro i = 0; i < 5; i ++) {
			valoresMultiplicacao[i] = numerosInformados[i] * valorMultiplicador
		}
	

		escreva("\n\n=======RESULTADOS=======\n\n")
		para (inteiro i = 0; i < 5; i ++) {
			escreva("\n",numerosInformados[i], " * ", valorMultiplicador, " = ", valoresMultiplicacao[i])		
		}
		escreva("\n\n=======RESULTADOS=======\n\n")


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