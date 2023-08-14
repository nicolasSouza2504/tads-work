programa
{
	
	funcao inicio( ) {
		real valorCompra, valorParcela
		inteiro numParcelas
		
		escreva("Valor total da compra: ")
		leia(valorCompra)
		
		escreva ("Deseja parcelar em quantas vezes?")
		leia(numParcelas)
		
		valorParcela = valorCompra / numParcelas
		
		escreva("\nSua compra foi de ", valorCompra,
		" reais.")
		escreva ("\nVocê optou por parcelar em ", numParcelas,
		" vezes.")
		escreva("\nSua parcela mensal é de ", valorParcela,
		" reais")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 474; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */