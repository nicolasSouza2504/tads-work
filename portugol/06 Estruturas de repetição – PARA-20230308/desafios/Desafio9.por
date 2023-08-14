programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	cadeia nome
	caracter sexo
	real salario
	real somaTotal
	inteiro quantidadeFeminino = 0
	inteiro quantidadeMasculino = 0 
	real somaSalarioMasculino = 0
	real mediaSalarioMasculino = 0
	real mediaSalarioFeminino = 0
	real somaSalarioFeminino = 0
	logico valorIncorreto = falso
	
	funcao inicio() {
						
		escreva("------------------------------------------\n\n")
		escreva("  Programa que cálcula a média de salários em uma empresa masculino/feminino \n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 1; i <= 5; i++) {

			se (valorIncorreto) {
				pare
			} 
		
			escreva(" Informe o nome do ", i, "° colaborador -> ")	
			leia(nome)

			escreva(" Informe o salário do ", i, "° colaborador -> ")	
			leia(salario)

			escreva(" Informe o sexo do ", i, "° colaborador seguindo o exemplo:(M -> Masculino, F -> Feminino) -> ")	
			leia(sexo)
			limpa()

			escolha (sexo) {
				
				caso 'M':

					quantidadeMasculino ++
					somaSalarioMasculino += salario
					
					pare
					
				caso 'F':

					quantidadeFeminino++
					somaSalarioFeminino += salario
					
					pare
					
				caso contrario: 
					
					escreva("\n\n Informe o sexo do ", i, "° colaborador SEGUINDO O EXEMPLO:(M -> Masculino, F -> Feminino). Sexo informado -> ", sexo)	
					valorIncorreto = verdadeiro
					
					pare
					
			}

						
		}

		se (valorIncorreto == falso) {

			limpa()
			mediaSalarioMasculino = somaSalarioMasculino / quantidadeMasculino
			mediaSalarioFeminino = somaSalarioFeminino / quantidadeFeminino
			somaTotal = somaSalarioFeminino + somaSalarioMasculino

			escreva("------------------------------------------\n\n")
			
			se (mediaSalarioFeminino > 0) {
				escreva("  Média salário feminino: ", mediaSalarioFeminino, "\n\n")
			}

			se (mediaSalarioMasculino > 0) {
				escreva("  Média salário masculino: ", mediaSalarioMasculino, "\n\n")
			}
			
			escreva("  Total folha de pagamentos: ", somaTotal, "\n\n")
			escreva("------------------------------------------\n\n")

		}
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */