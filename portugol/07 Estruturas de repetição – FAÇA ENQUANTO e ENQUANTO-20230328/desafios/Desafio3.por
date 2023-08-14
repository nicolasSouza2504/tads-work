programa {

	//producted by nicolas vieira de souza ADS - 1
	
	inteiro quantidadeFeminino = 0
	inteiro quantidadeMasculino = 0
	real salarioTotalMasculino = 0.0
	real salarioTotalFeminino = 0.0
	inteiro totalIdades = 0
	inteiro idadeFuncionario
	real salarioFuncionario
	caracter generoFuncionario
	logico generoValido = verdadeiro
	cadeia finalizar
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que faz o cálculo das médias entre funcionários de uma empresa.\n\n")
		escreva("------------------------------------------\n\n")

		faca {
			
			escreva("Informe a idade do funcionário -> ")
			leia(idadeFuncionario)
			
			escreva("Informe o salário do usuário -> ")
			leia(salarioFuncionario)

			escreva("Informe o genero do funcionário seguindo o exemplo Ex.:(M -> masculino, F -> feminino)-> ")
			leia(generoFuncionario)
			limpa()

			escolha (generoFuncionario) {
				
				caso 'M':
					
					quantidadeMasculino ++
					salarioTotalMasculino += salarioFuncionario
					totalIdades += idadeFuncionario
					
					pare
					
				caso 'F':
				
					quantidadeFeminino ++
					salarioTotalFeminino += salarioFuncionario
					totalIdades += idadeFuncionario
					
					pare
					
				caso contrario:

					escreva("Informe o genero do funcionário SEGUINDO O EXEMPLO. Ex.:(M ->  masculino, F -> feminino). Genero informado -> ", generoFuncionario, "\n\n")					
					pare
			
				
			}

			escreva("Deseja Finalizar o programa? Caso sim, digite 'Finalizar', caso não, aperte enter. ")
			leia(finalizar)
			limpa()
			
		} enquanto (finalizar != "Finalizar") 
		
		real mediaSalarioMasculino = salarioTotalMasculino / quantidadeMasculino
		real mediaSalarioFeminino = salarioTotalFeminino/ quantidadeFeminino
		
		inteiro quantidadeTotalFuncionarios = quantidadeFeminino + quantidadeMasculino
		inteiro mediaTotalIdades = totalIdades / quantidadeTotalFuncionarios

		real mediaSalarioTotal = (salarioTotalMasculino + salarioTotalFeminino) / quantidadeTotalFuncionarios
		
		
		escreva("===========Resultados===========\n\n")
		
		escreva(" Média salário masculino -> ", mediaSalarioMasculino, "\n")
		escreva(" Média salário feminino -> ", mediaSalarioFeminino, "\n")
		escreva(" Média geral idades -> ", mediaTotalIdades, "\n")
		escreva(" Média salário do grupo -> ", mediaSalarioTotal)
		
		escreva("\n\n===========Resultados===========")

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