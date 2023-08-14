programa	{
	
	//producted by nicolas vieira de souza ADS - 1
	
	cadeia indexSobrenomeFamilia[4]
	inteiro indexNumAp[4]
	real indexRendaTotal[4]
	inteiro indexQuantPessoasFamilia[4]
	logico pesquisarFamilia = verdadeiro
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que insere e consulta as famílias dentro de um determinado condomínio \n\n")		
		escreva("------------------------------------------\n\n")

		inteiro numAp	
		
		para (inteiro i = 0; i < 4; i++) {
			
			numAp = 0
			escreva("Informe o número do ap da ", (i + 1), "° família. Ex:(150, 500, 0) -> ")
			leia(numAp)

			se (indexAp(numAp) == -1) {
				
				indexNumAp[i] = numAp
				escreva("Informe o sobrenome da ", (i + 1), "° família. Ex:(Souza, Vieira, Gonzales) -> ")

				leia(indexSobrenomeFamilia[i])
			
				escreva("Informe o total da renda da ", (i + 1), "° família. Ex:(1500.00, 5000, 2500.00) -> ")
				leia(indexRendaTotal[i])

				escreva("Informe a quantidade de pessoas da ", (i + 1), "° família. Ex:(4, 5, 6, 0) -> ")
				leia(indexQuantPessoasFamilia[i])
				limpa()
				
			} senao {
				limpa()
				escreva("\nInforme um número de Ap ainda não cadastrado! \n\n")
			 	i-- 			
			}			
				
		}

		faca {
			
			numAp = 0
			
			escreva(" Informe o número do apartamento da família para pesquisa! Ex:(1,5,70) -> ")
			leia(numAp)
			inteiro indexApVetor = indexAp(numAp)

			se (indexApVetor > -1) {
				
				escreva("\n\n=====================\n\n")
				escreva(" Sobrenome Família -> ", indexSobrenomeFamilia[indexApVetor], "\n")
				escreva(" Ap -> ", indexNumAp[indexApVetor], "\n")
				escreva(" Renda Total -> R$", indexRendaTotal[indexApVetor], "\n")
				escreva(" Renda Per Capita -> R$", (indexRendaTotal[indexApVetor] / indexQuantPessoasFamilia[indexApVetor]))
				escreva("\n\n=====================\n\n")

				escreva(" Pesquisar outra família? (verdadeiro, falso) -> ")
				leia(pesquisarFamilia)
				
			} senao {
				escreva("\n\n ATENÇÃO!!! INFORME UM NÚMERO DE AP EXISTENTE. \n\n")
			}
			
		} enquanto(pesquisarFamilia)
			
		
	}

	funcao inteiro indexAp(inteiro numAp) {

		para (inteiro i = 0; i < 4; i++) {
			
			se (indexNumAp[i] == numAp) {
				retorne i
			}
		
		}
		
		retorne -1
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */