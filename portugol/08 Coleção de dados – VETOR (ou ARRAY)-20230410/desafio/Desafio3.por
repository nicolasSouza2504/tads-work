programa {
	
	//producted by nicolas vieira de souza ADS - 1
	
	inteiro a[10]
	inteiro b[10]
	
	funcao inicio() {	
		
		para (inteiro i = 1; i <= 10; i++) {
			
			b[i-1] = 0
				
			se (i % 2 == 0) {
				a[i-1] = i
			} senao {
				a[i-1] = 2 * i
			}
							
		}

		para (inteiro i = 1; i <= 10; i++) {
			
			enquanto(a[i -1] > i) {
				b[i-1] = a[i-1]
				a[i-1] = a[i-1] - 1
			}
						
		}

		escreva("=========VALORES=========\n\n")
		para (inteiro i = 1; i < 10; i++) {						
			escreva(" VALOR A -> ", a[i-1], "\n")
			escreva(" VALOR B -> ", b[i-1], "\n")
			
		}
		escreva("\n\n=========VALORES=========\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 117; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */