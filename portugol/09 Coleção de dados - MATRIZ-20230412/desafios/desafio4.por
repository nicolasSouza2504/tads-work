programa {

//producted by nicolas vieira de souza ADS - 1

	real matriz[5][5], matrizMult[5][5]
	inteiro totalLinha
	real renda
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que calcula o dobro dos resultados de uma matriz[5][5]\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 5; i ++) {
			
			totalLinha = 0
			
			para (inteiro j = 0; j < 5; j ++) {
				
				escreva("Informe o número da ", j + 1, "° coluna da ", i + 1, "° linha -> ")
				leia(matriz[i][j])		
							
			}		
				
			limpa()
			
		}

		para (inteiro i = 0; i < 5; i ++) {
			
			totalLinha = 0
			
			para (inteiro j = 0; j < 5; j ++) {					
				matrizMult[i][j] = matriz[i][j] * 2
			}		
				
			limpa()
			
		}

		escreva("\n\n=====MATRIZ=RESULTADO=====\n\n")		
		
		para (inteiro i = 0; i < 5; i ++) {
			
			escreva(i, " || ")	
			
			para (inteiro j = 0; j < 5; j ++) {
											
				escreva(j, " | ")
							
			}		

			escreva("\n")
		}
		escreva("\n\n=====MATRIZ=RESULTADO=====\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 986; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */