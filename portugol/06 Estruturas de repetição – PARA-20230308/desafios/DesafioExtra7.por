programa {

// producted by nicolas vieira de souza -- ADS  1°
	
	inteiro quantidadePares = 0
	inteiro quantidadeImpares = 0
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna a quantidade de números ímpares e pares entre 0 e 231\n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i <= 231; i++) {
			
			se  (i % 2 == 0) {
				quantidadePares++
			} senao {
				quantidadeImpares++
			}
			
		}

		escreva("===========RESULTADO===========\n\n")
		escreva(" Quantidade números pares: ", quantidadePares, "\n")
		escreva(" Quantidade números ímpares: ", quantidadeImpares, "\n\n")
		escreva("===========RESULTADO===========\n\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 64; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */