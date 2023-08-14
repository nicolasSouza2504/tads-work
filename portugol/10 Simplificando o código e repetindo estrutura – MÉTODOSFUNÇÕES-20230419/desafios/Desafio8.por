programa {
	
	inteiro lado1, lado2, lado3
	
	funcao inicio() {
						
		escreva("------------------------------------------\n\n")
		escreva(" Programa que le os lados de um triangulo e retorna o seu tipo \n\n")		
		escreva("------------------------------------------\n\n")

		leNumeros()
		exibirTipo()
		
	}

	funcao leNumeros() {
				
		escreva(" Informe o tamanho do 1° lado -> ")
		leia(lado1)

		escreva(" Informe o tamanho do 1° lado -> ")
		leia(lado2)

		escreva(" Informe o tamanho do 3° lado -> ")
		leia(lado3)

		se (lado1 < 0 ou lado2 < 0 ou lado3 < 0) {
			escreva(" \nINFORME APENAS NÚMEROS POSITIVOS\n\n")
			leNumeros()
		}
	
	}

	funcao exibirTipo() {
		
		cadeia tipo 
		
		se (lado1 == lado2 e lado2 == lado3) {
			tipo = " equilátero"
		} senao se (lado1 == lado2 ou lado1 == lado3 ou lado2 == lado3) {
			tipo = " isósceles"
		} senao {
			tipo = " escaleno"
		}
	
		limpa()
		escreva("Tipo do triangulo -> ", tipo, "\n\n")		
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 693; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */