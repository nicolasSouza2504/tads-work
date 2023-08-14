programa {

//producted by nicolas vieira de souza ADS - 1

	real matriz[4][3], resultados[4]
	inteiro totalLinha
	real renda
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que calcula a o total das linhas de uma matriz [4][3]\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 4; i ++) {
			totalLinha = 0
			para (inteiro j = 0; j < 3; j ++) {
				
				escreva("Informe o total da ", j + 1, "° coluna da ", i + 1, "° linha -> ")
				leia(matriz[i][j])	
				totalLinha += matriz[i][j]			
			}

			resultados[i] = totalLinha
			limpa()
		}

		escreva("\n\n=====RESULTADO=====\n\n")
		
		para (inteiro i = 0; i < 4; i ++) {
			escreva(" Valor total linha ", i + 1, " -> ", resultados[i], "\n")
		}
				
		escreva("\n\n=====RESULTADO=====\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */