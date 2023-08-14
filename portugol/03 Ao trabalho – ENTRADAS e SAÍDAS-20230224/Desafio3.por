programa {
	
	// Producted by nicolas
	
	real salario_base = 500
	cadeia nome_vendedor 
	inteiro quantidade_carros
	real total_venda_concessionaria, comissao_vendedor, salario_total_vendedor
	
	funcao inicio() {
		escreva("--- Cálculo salário total vendedor de carros ---")
		escreva("\n\n  Nome vendedor Ex(Marcos)-> ")
		leia(nome_vendedor)

		escreva(" Quantidade carros vendidos (10) -> ")
		leia(quantidade_carros)

		escreva(" Total vendido concessionária (10.00) -> ")
		leia(total_venda_concessionaria)
			
		comissao_vendedor = quantidade_carros * 50
		salario_total_vendedor = comissao_vendedor + salario_base + (total_venda_concessionaria * 0.05)
		
		escreva("\n\n Nome vendedor -> ", nome_vendedor, "\n")
		escreva(" Comissão vendedor -> ", comissao_vendedor, "\n")
		escreva(" Salário Total -> ", salario_total_vendedor)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 842; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */