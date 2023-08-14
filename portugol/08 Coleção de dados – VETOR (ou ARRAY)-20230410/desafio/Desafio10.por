programa {

	//producted by nicolas vieira de souza ADS - 1
	
	real numeros1[5]
	real numeros2[5]
	real totalSomas[5]
	
	inteiro valoresMultiplicacao[5]
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que realiza a soma de dois vetores e gera um novo vetor de valores\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 5; i ++) {
			escreva("Informe o ", i + 1 , "° número da 1° lista de números para soma -> ")
			leia(numeros1[i])
		}

		
		para (inteiro i = 0; i < 5; i ++) {
			limpa()
			escreva("Informe o ", i + 1 , "° número da 2° lista de números para soma -> ")
			leia(numeros2[i])
		}

		
		para (inteiro i = 0; i < 5; i ++) {
			totalSomas[i] = numeros1[i] + numeros2[i]
		}
	

		escreva("\n\n=======RESULTADOS=======\n\n")
		para (inteiro i = 0; i < 5; i ++) {
			escreva("\n",numeros1[i], " + ", numeros2[i], " = ", totalSomas[i])		
		}
		escreva("\n\n=======RESULTADOS=======\n\n")


	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */