programa {
	
	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	inclua biblioteca Util
	
	inteiro numeroSorteado, palpite
	logico acertou = falso
	
	funcao inicio() {

		escreva("------------------------------------------\n\n")
		escreva(" Programa que sorteia um número de 0 a 10 e da 5 chances para o usuário acertalo!  \n\n")
		escreva("------------------------------------------\n\n")
		
		numeroSorteado = Util.sorteia(0,10)

		para (inteiro i = 0; i < 5; i++) {

			se (acertou == falso) {
			
				escreva(" Informe um número para palpite. Exemplo(0,1,2,3,4,5,6,7,8,9,10) -> ")
				leia(palpite)
				limpa()
				
				se (numeroSorteado == palpite) {
					escreva("------------------------------------------\n\n")
					escreva(" Parabéns! Você ganhou o brinde.\n")
					escreva("------------------------------------------\n\n")
					acertou = verdadeiro
				} senao {
					escreva("------------------------------------------\n\n")
					escreva(" Que pena. Infelizmente você não acertou. \n")
					escreva("------------------------------------------\n\n")
				}
				
			}
			
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 75; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */