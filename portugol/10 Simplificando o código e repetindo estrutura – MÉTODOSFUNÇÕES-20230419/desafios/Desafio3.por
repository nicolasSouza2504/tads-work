programa {

//producted by nicolas vieira de souza ADS - 1
		
	funcao inicio() {
		
		real totalCompra

		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna o calculo do valor - desconto baseando-se na regra informada \n\n")		
		escreva("------------------------------------------\n\n")

		totalCompra = leiaTotalCompra()
		exibeValorFinal(totalCompra)
	}

	funcao real leiaTotalCompra() {

		real totalCompra
		
		escreva(" Informe o valor total da compra -> ")
		leia(totalCompra)
		
		retorne totalCompra
	}

	funcao exibeValorFinal(real valorTotal) {

		real desconto 
		
		se (valorTotal <= 100.00) {
			desconto = 0.0		
		} senao se (valorTotal <= 200.00) {
			desconto = 0.20
		} senao {
			desconto = 0.30
		}

		desconto =  valorTotal * desconto
		valorTotal = valorTotal - desconto

		limpa()
		escreva(" Valor final da compra -> R$", valorTotal, "\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 60; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */