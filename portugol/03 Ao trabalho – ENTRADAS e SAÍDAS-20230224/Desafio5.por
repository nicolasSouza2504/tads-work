programa {
	
	// Producted by nicolas
	
	real valor_hora, valor_inss, valor_sindicato, salario_liquido, salario_bruto, valor_ir
	inteiro horas_trabalhadas
	
	funcao inicio() {
		
		escreva("--Cálculo total salário com descontos--")
		
		escreva(" Informe o valor total da sua hora de trabalho. Ex:(50.00) -> ")
		leia(valor_hora)

		escreva(" Informe as horas trabalhadas. Ex:(50) -> ")
		leia(horas_trabalhadas)

		salario_bruto = valor_hora * horas_trabalhadas
		valor_sindicato = salario_bruto * 0.05
		valor_inss = salario_bruto * 0.08
		valor_ir = salario_bruto * 0.11
		salario_liquido = salario_bruto - valor_inss - valor_ir - valor_sindicato

		escreva(" \nSalário bruto: ", salario_bruto)
		escreva(" \nValor pago INSS: ", valor_inss)
		escreva(" \nValor pago sindicato: ", valor_sindicato)
		escreva(" \nSalário líquido: ", salario_liquido)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */