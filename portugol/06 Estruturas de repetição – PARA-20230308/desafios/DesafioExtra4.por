programa {

// producted by nicolas vieira de souza -- ADS  1°
	
	inteiro quantidadeMenores = 0
	inteiro numeroInformado	
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva("  Programa que mostra quantos dos 10 números informados é menor que 5.\n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 1; i <= 10; i++) {
			
			escreva("Informe o ", i, "° número. Exemplo(6, 7, 9).  -> ")
			leia(numeroInformado)

			se (numeroInformado < 5) {
				quantidadeMenores ++ 
			}
			
			
		}

		limpa()
		
		escreva("------------------------------------------\n\n")
		escreva(" Total números menores que 5 -> ", quantidadeMenores, "\n\n")
		escreva("------------------------------------------\n\n")
		
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 145; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */