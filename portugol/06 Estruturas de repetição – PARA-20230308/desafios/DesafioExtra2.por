programa {

// producted by nicolas vieira de souza -- ADS  1°
	
	inteiro somaTotal = 0
	inteiro numeroInformado
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva("  Programa que mostra a soma de 5 números informados pelo usuároi.\n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 1; i <= 5; i++) {
			
			escreva("Informe o ", i, "° número. Exemplo(6, 7, 9).  -> ")
			leia(numeroInformado)

			somaTotal += numeroInformado
			
		}

		limpa()
		
		escreva("------------------------------------------\n\n")
		escreva(" Soma Total -> ", somaTotal, "\n\n")
		escreva("------------------------------------------\n\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 138; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */