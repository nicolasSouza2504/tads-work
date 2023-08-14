programa {
	
	//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1
	
	funcao inicio() {
		
		inteiro qtdMacas
		real valorMacas
		real valorFinal
		
		escreva("Olá!\n")
		escreva("Nesse programa faremos o cálculo do valor de venda de maçãs. \n")
		escreva("Informe a quantidade de maçãs vendidas: ")
		leia(qtdMacas)
		escreva("\n")
		
		se(qtdMacas <= 0) {
			escreva("A quantidade de maçãs vendidas é zero ou negativa. Por isso, o programa será encerrado.")
		} senao {
			
			se (qtdMacas < 12) {
				valorMacas = 1.30
			} senao {
				valorMacas = 1.00
			}

			valorFinal = qtdMacas *valorMacas
			escreva("O valor final de venda das maçãs é de R$ " + valorFinal)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 66; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */