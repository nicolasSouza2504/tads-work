programa {

//producted by nicolas vieira de souza ADS - 1

	inteiro quantidadeHabitantes = 0
	inteiro quantidadeFilhosHabitantes = 0
	inteiro quantidadeHabitantesRendaMenor = 0
	inteiro quantidadeFilhosHabitante = 0
	real salarioTotalHabitantes = 0.0
	real maiorSalarioHabitantes = 0.0
	real salarioHabitante
	logico repetir = falso
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que coleta dados da população de uma cidade, e faz o levantamento de informações \n\n")
		escreva("------------------------------------------\n\n")

		faca {
			
			escreva("Informe o salario do habitante. Ex:(150.00, 400.00) -> ")
			leia(salarioHabitante)

			escreva("Informe a quantidade de filhos do habitante -> ")
			leia(quantidadeFilhosHabitante)
			
			quantidadeHabitantes++ 
			quantidadeFilhosHabitantes += quantidadeFilhosHabitante
			salarioTotalHabitantes += salarioHabitante

			se (salarioHabitante < 150) {
				quantidadeHabitantesRendaMenor ++
			}

			se (salarioHabitante > maiorSalarioHabitantes) {
				maiorSalarioHabitantes = salarioHabitante
			}

			
			limpa()
			escreva(" Deseja informar outro habitante? (verdadeiro, falso) -> ")
			leia(repetir)
			limpa()
			
		} enquanto(repetir)

		real mediaSalarioPopulacao = salarioTotalHabitantes / quantidadeHabitantes
		inteiro mediaFilhos = quantidadeFilhosHabitantes / quantidadeHabitantes
		inteiro percentualSalarioMenor = quantidadeHabitantesRendaMenor / quantidadeHabitantes * 100
		
		escreva("------------------------------------------\n\n")
		escreva(" Média de salário da população: ", mediaSalarioPopulacao, "\n")
		escreva(" Média do número de filhos: ", mediaFilhos, "\n")
		escreva(" Maior salário dos habitantes: ", maiorSalarioHabitantes, "\n")
		escreva(" Percentual de pessoas com salário menor que R$ 150,00: ", percentualSalarioMenor, "% \n\n")
		escreva("------------------------------------------\n\n")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */