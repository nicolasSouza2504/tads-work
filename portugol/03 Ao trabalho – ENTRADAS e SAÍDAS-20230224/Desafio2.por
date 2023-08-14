programa {

	// Producted by nicolas
	
	real valor_item, porcentagem_comissao, margem_lucro, impostos_governamentais, valor_comissao, valor_margem_lucro, valor_impostos_governamentais, valor_final
	
	funcao inicio() {
		
		escreva("--- Cálculo do valor total de um item após impostos ---")
		
		escreva("\n\nInforme o valor de fabrica do item (200.00) -> ")
		leia(valor_item)
		
		escreva("Informe a porcentagem de comissão sobre o custo do item (10% -> 10) -> ")
		leia(porcentagem_comissao)
		porcentagem_comissao = porcentagem_comissao/100 

		escreva("Informe a porcentagem de margem de lucro desejada a partir do valor acumulado entre custo e comissão (10% -> 10) -> ")
		leia(margem_lucro)
		margem_lucro = margem_lucro/100

		escreva("Informe a porcentagem dos impostos governamentais para todos os itens anteriores (10% -> 10) -> ")
		leia(impostos_governamentais)
		impostos_governamentais = impostos_governamentais/100

		valor_comissao = valor_item * porcentagem_comissao
		valor_margem_lucro = (valor_item + valor_comissao) * margem_lucro
		valor_impostos_governamentais = (valor_item + valor_comissao + valor_margem_lucro) * impostos_governamentais
		valor_final = valor_comissao + valor_margem_lucro + valor_impostos_governamentais + valor_item

		escreva("\nValor comissão -> R$", valor_comissao)
		escreva("\nValor margem lucro -> R$", valor_margem_lucro)
		escreva("\nValor impostos governamentais -> R$", valor_impostos_governamentais)
		escreva("\nValor final-> R$", valor_final)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1293; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */