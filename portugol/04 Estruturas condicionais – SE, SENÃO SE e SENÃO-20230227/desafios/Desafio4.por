programa {

//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1
	
	inteiro totalHoras, horasNormais, horasExtras
	real totalSalario, valorHora
	
	funcao inicio() {
		
		escreva("-----------------------------------------------------------------------------------------------------------------------------------\n")
		escreva(" Software desenvolvido para cálcular o valor a ser pago para um funcionário no mês, calculando as horas normais(40h) e as extras --\n")
		escreva("-----------------------------------------------------------------------------------------------------------------------------------\n\n")

		escreva("Informe o valor total da hora trabalhada. Ex: (50.00) -> ")
		leia(valorHora)

		escreva("Informe o total de horas trabalhadas. Ex: (40,35,60) -> ")
		leia(totalHoras)
		
		se (totalHoras > 40) {
			horasExtras = totalHoras - 40
			horasNormais = 40
			totalSalario = valorHora * 40 + ((valorHora + (valorHora * 0.5)) * horasExtras)
		} senao {
			horasNormais = totalHoras
			totalSalario = totalHoras * valorHora
		}
		
		limpa()
		
		escreva("-----------------------------------------------------------------------------------------------------------------------------------\n")
		escreva(" Total salário funcionário --> R$", totalSalario, "\n")
		escreva("-----------------------------------------------------------------------------------------------------------------------------------\n")

		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */