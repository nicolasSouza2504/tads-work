programa {

//producted by nicolas vieira de souza ADS - 1

	inclua biblioteca Util
	
	inteiro temperaturaDiasAno[364]
	real menorTemperaturaAno
	real maiorTemperaturaAno
	
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna a média de temperaturas em um ano \n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 364; i++) {
			temperaturaDiasAno[i] = Util.sorteia(0, 35)		
		}

		escreva("\n\n=======RESULTADO=======\n\n")
		escreva(" Menor temperatura do ano -> ", retornaMenorTemperatura(), "\n")
		escreva(" Maior temperatura do ano -> ", retornaMaiorTemperatura())
		escreva("\n\n=======RESULTADO=======\n\n")

		
		
	}

	funcao inteiro retornaMenorTemperatura() {
		
		inteiro menorValor = temperaturaDiasAno[0]
		
		para (inteiro i = 0; i < 10; i++) {
			
			se (menorValor > temperaturaDiasAno[i]) {
				menorValor = temperaturaDiasAno[i]
			}
			
		}
		
		retorne menorValor
		
	}

	funcao inteiro retornaMaiorTemperatura() {
		
		inteiro maiorValor = temperaturaDiasAno[0]
		
		para (inteiro i = 0; i < 10; i++) {
			
			se (maiorValor < temperaturaDiasAno[i]) {
				maiorValor = temperaturaDiasAno[i]
			}
			
		}
		
		retorne maiorValor
		
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