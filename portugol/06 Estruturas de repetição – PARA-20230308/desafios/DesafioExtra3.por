programa {

// producted by nicolas vieira de souza -- ADS  1°
	
	inteiro somaTotal = 0
	inteiro numeroInformado, media
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva("  Programa que mostra a soma e a média de 5 números informados pelo usuároi.\n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 1; i <= 5; i++) {
			
			escreva("Informe o ", i, "° número. Exemplo(6, 7, 9).  -> ")
			leia(numeroInformado)

			somaTotal += numeroInformado
			
		}

		media = somaTotal / 5
		limpa()
		
		escreva("------------------------------------------\n\n")
		escreva(" Soma Total -> ", somaTotal,"\n")
		escreva(" Média Total -> ", media, "\n\n")
		escreva("------------------------------------------\n\n")
		
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */