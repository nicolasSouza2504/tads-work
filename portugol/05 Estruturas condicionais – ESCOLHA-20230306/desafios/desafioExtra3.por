programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	inteiro codItem, quantidadeItem
	cadeia descricaoItem
	real precoTotal, precoUnitario
	
	funcao inicio() {
		escreva("------------------------------------------\n\n")
		escreva(" Programa que cálcula o valor da compra baseado no item desejado e na sua quantidade! \n\n")
		escreva("------------------------------------------\n\n")

		escreva("Informe o código do item desejado, baseado no exemplo abaixo: \n")
		escreva("100 -> Cachorro Quente \n")
		escreva("101 -> Bauru Simples \n")
		escreva("102 -> Bauru com ovo \n")
		escreva("103 -> Hamburguer \n")
		escreva("104 -> Cheeseburguer \n")
		escreva("105 -> Refrigerante \n")
		escreva("Código desejado: ")
		leia(codItem)
		limpa()

		escreva("Informe a quantidade do item Ex:(1,2,78,) -> ")
		leia(quantidadeItem)
		limpa()
		
		escolha (codItem) {
			caso 100:
				
				precoUnitario = 1.70
				precoTotal = precoUnitario * quantidadeItem
				descricaoItem = "Cachorro Quente"

				escreva("------------------------------------------\n\n")
				escreva(" Produto Selecionado -> ", descricaoItem,"\n")
				escreva(" Quantidade Itens -> ", quantidadeItem,"\n")
				escreva(" Valor Unitário -> ", precoUnitario,"\n")
				escreva(" Valor Total -> ", precoTotal,"\n")
				escreva("------------------------------------------\n\n")
				
				pare
				
			caso 101: 
				
				precoUnitario = 2.30
				precoTotal = precoUnitario * quantidadeItem
				descricaoItem = "Bauru Simples"

				
				escreva("------------------------------------------\n\n")
				escreva(" Produto Selecionado -> ", descricaoItem,"\n")
				escreva(" Quantidade Itens -> ", quantidadeItem,"\n")
				escreva(" Valor Unitário -> ", precoUnitario,"\n")
				escreva(" Valor Total -> ", precoTotal,"\n")
				escreva("------------------------------------------\n\n")

				pare
				
			caso 102: 
				
				precoUnitario = 2.60
				precoTotal = precoUnitario * quantidadeItem
				descricaoItem = "Bauru com ovo"

				escreva("------------------------------------------\n\n")
				escreva(" Produto Selecionado -> ", descricaoItem,"\n")
				escreva(" Quantidade Itens -> ", quantidadeItem,"\n")
				escreva(" Valor Unitário -> ", precoUnitario,"\n")
				escreva(" Valor Total -> ", precoTotal,"\n")
				escreva("------------------------------------------\n\n")

				pare
				
			caso 103:
			
				precoUnitario = 2.40
				precoTotal = precoUnitario * quantidadeItem
				descricaoItem = "Hamburguer"

				escreva("------------------------------------------\n\n")
				escreva(" Produto Selecionado -> ", descricaoItem,"\n")
				escreva(" Quantidade Itens -> ", quantidadeItem,"\n")
				escreva(" Valor Unitário -> ", precoUnitario,"\n")
				escreva(" Valor Total -> ", precoTotal,"\n")
				escreva("------------------------------------------\n\n")

				pare
				
			caso 104: 
			
				precoUnitario = 2.50
				precoTotal = precoUnitario * quantidadeItem
				descricaoItem = "Cheese Burguer"

				escreva("------------------------------------------\n\n")
				escreva(" Produto Selecionado -> ", descricaoItem,"\n")
				escreva(" Quantidade Itens -> ", quantidadeItem,"\n")
				escreva(" Valor Unitário -> ", precoUnitario,"\n")
				escreva(" Valor Total -> ", precoTotal,"\n")
				escreva("------------------------------------------\n\n")

				pare
				
			caso 105: 

				precoUnitario = 1.0
				precoTotal = precoUnitario * quantidadeItem
				descricaoItem = "Refrigerante"

				escreva("------------------------------------------\n\n")
				escreva(" Produto Selecionado -> ", descricaoItem,"\n")
				escreva(" Quantidade Itens -> ", quantidadeItem,"\n")
				escreva(" Valor Unitário -> ", precoUnitario,"\n")
				escreva(" Valor Total -> ", precoTotal,"\n")
				escreva("------------------------------------------\n\n")

				pare
				
			caso contrario: 
			
				escreva("Informe o código do item desejado, baseado no exemplo abaixo!! \n")
				escreva("100 -> Cachorro Quente \n")
				escreva("101 -> Bauru Simples \n")
				escreva("102 -> Bauru com ovo \n")
				escreva("103 -> Hamburguer \n")
				escreva("104 -> Cheeseburguer \n")
				escreva("105 -> Refrigerante \n\n")
				escreva("Código informado -> ", codItem)	
				
				pare
			
		}

		escreva("\n\n")

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2859; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */