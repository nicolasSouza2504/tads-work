programa {

//producted by nicolas vieira de souza ADS - 1

	inteiro matriz[4][4]
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que mostra as diagonais de uma matriz\n\n")		
		escreva("------------------------------------------\n\n")

		populaMatriz()
		
		para (inteiro i = 0; i < 4; i ++) {					
			
			para (inteiro j = 0; j < 4; j ++) {							
				
			}		
				
			limpa()
			
		}

		para (inteiro i = 0; i < 4; i ++) {			
			
			para (inteiro j = 0; j < 4; j ++) {					
				
				se (i == j) {
					escreva(" ", matriz[i][j], " ")
				} senao {
					escreva(" * ")
				}
				
			}									

			escreva("\n")
		}

		escreva("\n\n")
		
		para (inteiro i = 0; i < 4; i ++) {			
			
			para (inteiro j = 0; j < 4; j ++) {					
				
				se ((i + j) == 3) {
					escreva(" ", matriz[i][j], " ")
				} senao {
					escreva(" * ")
				}
				
			}									

			escreva("\n")
		}
	
	}

	funcao populaMatriz() {
		
		matriz[0][0] = 1
		matriz[0][1] = 2
		matriz[0][2] = 3
		matriz[0][3] = 4

		matriz[1][0] = 1
		matriz[1][1] = 2
		matriz[1][2] = 3
		matriz[1][3] = 4

		matriz[2][0] = 1
		matriz[2][1] = 2
		matriz[2][2] = 3
		matriz[2][3] = 4

		matriz[3][0] = 1
		matriz[3][1] = 2
		matriz[3][2] = 3
		matriz[3][3] = 4
		
	}	
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */