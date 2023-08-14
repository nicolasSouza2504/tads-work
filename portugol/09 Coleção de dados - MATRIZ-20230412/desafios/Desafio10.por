programa {
	
	inteiro m1[3][3]
	inteiro m2[3][3]
	
	funcao inicio() {
		
		para (inteiro i = 0; i < 3; i++) {
			
			para (inteiro j = 0; j < 3; j++) {
				m1[i][j] = i + 1
				m2[i][j] = j + 1
			}	
			
		}

		para (inteiro i = 0; i < 3; i++) {
			
			para (inteiro j = 0; j < 3; j++) {
				
				se (m1[i][j] == m2[i][j]) {
					m1[i][j] = 0
				} senao {
					m2[i][j] = 1
				}
				
			}	
			
		}


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 287; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {m1, 3, 9, 2}-{m2, 4, 9, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */