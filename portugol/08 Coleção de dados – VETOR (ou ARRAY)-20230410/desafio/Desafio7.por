programa {

	//producted by nicolas vieira de souza ADS - 1
	
	inteiro valuesList[10]
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna os itens de uma lista na ordem contrária \n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 4; i ++) {
			escreva("Informe o ", i , "° número para a lista de números -> ")
			leia(valuesList[i])
		}

		escreva("\n\n=======RESULTADO=======\n\n")
		para (inteiro i = 3; i >= 0; i --) {
			escreva("Ordem decrescente lista -> ", valuesList[i], "\n")		
		}
		escreva("\n\n=======RESULTADO=======\n\n")


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