programa {

//	Producted by Nicolas Vieira de Souza ADS - 1 	
	
	funcao inicio() {
		
		inteiro paramDe, paramAte		
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna uma sequencia de números, com limite de, até informados pelo usuário\n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe um número para se iniciar a sequencia. Exemplo(1,3,7,9) -> ")
		leia(paramDe)
		limpa()
		
		escreva(" Informe um número para se encerrar a sequencia. Exemplo(1,2,3,4) -> ")
		leia(paramAte)
		limpa()
		
		escreva("===============INICIO-SEQUENCIA===============\n\n")	

		se (paramDe < paramAte) {
								
			para (inteiro i = paramDe; i =< paramAte; i++) {			
				escreva(i)	
				escreva("\n")
			}
			
		} senao {					
			
			para (inteiro i = paramDe; i >= paramAte; i--) {			
				escreva(i)	
				escreva("\n")
			}

		}
		
		escreva("\n\n===============FIM-SEQUENCIA===============\n\n")	
		
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 708; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */