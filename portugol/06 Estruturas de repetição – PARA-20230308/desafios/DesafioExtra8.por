programa {

// producted by nicolas vieira de souza -- ADS  1°
	
	inteiro quantidadeMaiorIdade = 0
	inteiro idade
	
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna a quantidade de pessoas maior de idade, baseando-se em 20 pessoas informadas pelo usuáriolp\n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 1; i <= 20; i++) {
		
			escreva(" Informe a idade da " + i, "° pessoa -> ")
			leia(idade)

			se (idade >= 18) {
				quantidadeMaiorIdade++
			}
			
		}

		limpa()
		escreva("===========RESULTADO===========\n\n")		
		escreva(" Quantidade maiores de idade: ", quantidadeMaiorIdade,"\n\n")
		escreva("===========RESULTADO===========\n\n")
		
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 615; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */