programa {
	
	// Producted by nicolas

	inteiro horas, minutos, segundos, segundos_totais
	
	funcao inicio() {
		escreva("--Cálculo segundos totais--")
		
		escreva(" Informe as horas. Ex: (HH -> 10) -> ")
		leia(horas)
		
		escreva(" Informe os minutos Ex: (mm -> 10) -> ")
		leia(minutos)
		
		escreva(" Informe os segundos Ex: (ss -> 01) -> ")
		leia(segundos)

		segundos_totais = (horas * 60 * 60) + (minutos * 60) + segundos
		escreva(" Segundos Totais -> ", segundos_totais)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */