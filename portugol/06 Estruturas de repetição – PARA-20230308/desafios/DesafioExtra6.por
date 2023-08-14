programa {

	// producted by nicolas vieira de souza -- ADS  1°
	
	funcao inicio() {
		
		inteiro incremento, limit
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna a sequência de um número informado até 0, incrementando de acordo o informado. \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe um número. Ex.: 5,4,2,10. -> ")
		leia(limit)
		limpa()

		escreva(" Informe um número para incrementarmos a sequencia. Ex.: 5,4,2,10. -> ")
		leia(incremento)

		escreva("\n\n===============INICIO-SEQUENCIA===============\n\n")	

		se (limit < 0) {

			para (inteiro i = limit; i <= 0; i += incremento) {
				escreva(i, "\n\n")
			}
			
		} senao {
			para (inteiro i = limit; i >= 0; i -= incremento) {
				escreva(i, "\n\n")
			}
		}
		
		escreva("\n\n===============FIM-SEQUENCIA===============\n\n")	
					
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 63; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */