programa {
	
	// Producted by nicolas
	
	inteiro metros_quadrados, preco_total, total_litros,quantidade_latas_tinta
 		
	funcao inicio() {
		
		escreva("--- Quantidade latas necessárias para pintura e valores das mesmas ---")

		escreva("\n\n Informe os metros quadrados da área desejada Ex:(10m² -> 10) -> ")
		leia(metros_quadrados)

		total_litros = (metros_quadrados / 3)
		
		quantidade_latas_tinta = (total_litros / 18)

		//se (quantidade_latas_tinta < 1) {
			quantidade_latas_tinta = quantidade_latas_tinta + 1	
		//}

		preco_total = quantidade_latas_tinta * 80
		escreva("\n Quantidade latas de tinta necessárias para pintura -> ", quantidade_latas_tinta)
		escreva("\n Preço total -> $", preco_total)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */