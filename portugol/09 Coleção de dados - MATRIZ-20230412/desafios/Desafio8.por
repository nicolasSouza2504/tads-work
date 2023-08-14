programa {

//producted by nicolas vieira de souza ADS - 1

	
	inteiro matriz[4][4]
	inteiro total = 0
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que mostra de um tabuleiro de acordo com a regra da duplicação, e os valores totais do mesmo \n\n")		
		escreva("------------------------------------------\n\n")

		inteiro valores = 1
		
		para (inteiro i =0; i < 4; i++) {
			
			para (inteiro j = 0; j < 4; j++) {				
				
				se (i == 0 e j == 0) {					
					matriz[i][j] = valores 	
						
				} senao {
					
					valores = valores * 2
					matriz[i][j] = valores
					
				}

				total += valores
				
			}

		}
		
		escreva("\n\n===========================\n")
		
		para (inteiro i =0; i < 4; i++) {
			
			para (inteiro j = 0; j < 4; j++) {				
				
				escreva("|", matriz[i][j])
				
			}

			escreva("\n")

		}

		escreva("\n Total: ", total)
		
		escreva("\n===========================\n\n")

		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */