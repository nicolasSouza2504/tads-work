programa {

	//producted by nicolas vieira de souza ADS - 1
	
	inteiro valuesList[5]
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna quantos números de uma lista são pares\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 5; i ++) {
			escreva("Informe o ", i + 1, "° número para a lista de números -> ")
			leia(valuesList[i])
		}

		escreva("\n\n=======RESULTADO=======\n\n")
		escreva(" Quantidade números pares -> ", quantidadeNumerosPares())
		escreva("\n\n=======RESULTADO=======\n\n")


	}

	funcao inteiro quantidadeNumerosPares() {		
	
		inteiro quant = 0
		
		para (inteiro i = 0; i < 5; i ++) {
			se (valuesList[i] % 2 == 0) {
				quant++
			}
		}

		retorne quant
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