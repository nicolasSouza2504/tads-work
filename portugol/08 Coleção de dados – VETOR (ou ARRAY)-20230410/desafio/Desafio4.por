programa {

//producted by nicolas vieira de souza ADS - 1

	inteiro indexValues[10]
	inteiro valueResearch
	logico research = verdadeiro
	
	funcao inicio() {
			
		escreva("------------------------------------------\n\n")
		escreva(" Solução que armazena 10 valores em uma lista, e retorna o index do item que o usuário deseja pesquisar\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 10; i ++) {
			escreva("Informe o ", i + 1, "° número para a lista de números -> ")
			leia(indexValues[i])
		}

		faca {
			
			limpa()
			
			escreva("Informe um valor para pesquisa -> ")
			leia(valueResearch)
			
			inteiro indexItem = indexValue(valueResearch)

			escreva("\n\n=======RESULTADO=======\n\n")
			
			se (indexItem > -1) {
				escreva("Posição do item informado = ", indexItem + 1)
			} senao {
				escreva("Não encontrado o item na lista!")
			}
			
			escreva("\n\n=======RESULTADO=======\n\n")

			escreva("Deseja pesquisar outro item? (verdadeiro, falso)")
			leia(research)
			
		} enquanto(research)
				
	}

	funcao inteiro indexValue(inteiro value) {

		para (inteiro i = 0; i < 10; i++) {
			
			se (indexValues[i] == value) {
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
 * @POSICAO-CURSOR = 235; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */