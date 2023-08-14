programa {
	
	cadeia competidor1, competidor2, competidor3, competidor4, competidorVencedorRodada1, competidorVencedorRodada2,competidorVencedorFinal
	inteiro vencedorRodada1, vencedorRodada2, vencedorFinal
	logico vencedor1Valido = verdadeiro
	logico vencedor2Valido = verdadeiro
	logico vencedorFinalValido = verdadeiro
	
	funcao inicio() {
		escreva("------------------------------------------\n\n")
		escreva(" Programa que anuncia o vencedor de uma competição \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o nome do 1° competidor Ex:(Nicolas, Lucas, Gabriel) -> ")
		leia(competidor1)
		
		escreva(" Informe o nome do 2° competidor Ex:(Nicolas, Lucas, Gabriel) -> ")
		leia(competidor2)

		escreva(" Informe o nome do 3° competidor Ex:(Nicolas, Lucas, Gabriel) -> ")
		leia(competidor3)

		escreva(" Informe o nome do 4° competidor Ex:(Nicolas, Lucas, Gabriel) -> ")
		leia(competidor4)

		limpa()
		
		escreva("------------------------------------------\n\n")
		escreva("Rodada 1: \n\n")
		escreva("(1)", competidor1, " X ", "(2)", competidor2, "\n\n")
		escreva(" Informe o número do vencedor Ex:(1,2) -> ")
		leia(vencedorRodada1)
		escreva("\n\n------------------------------------------\n\n")

		se (vencedorRodada1 == 1 ) {
			competidorVencedorRodada1 = competidor1
		} senao se (vencedorRodada1 == 2) {
			competidorVencedorRodada1 = competidor2
		} senao {
			
			limpa()
			
			escreva("------------------------------------------\n\n")
			escreva(" Informe o número de um competidor dentre os competidores na lista (1,2), número informado -> ", vencedorRodada1)
			escreva("\n\n------------------------------------------\n\n")
			vencedor1Valido = falso
			
		}

		se (vencedor1Valido) {
			
			limpa()
			
			escreva("------------------------------------------\n\n")
			escreva("Rodada 2: \n\n")
			escreva("(3)", competidor3, " X ", "(4)", competidor4, "\n\n")
			escreva(" Informe o número do vencedor Ex:(3,4) -> ")
			leia(vencedorRodada2)
			escreva("\n\n------------------------------------------\n\n")
	
			se (vencedorRodada2 == 3) {
				competidorVencedorRodada2 = competidor3
			} senao se (vencedorRodada2 == 4) {
				competidorVencedorRodada2 = competidor4
			} senao {
				
				limpa()
				
				escreva("------------------------------------------\n\n")
				escreva(" Informe o número de um competidor dentre os competidores na lista (3,4), número informado -> ", vencedorRodada2)
				escreva("\n\n------------------------------------------\n\n")
				
				vencedor2Valido = falso
				
			}
			
		}
	

		se (vencedor1Valido e vencedor2Valido) {
			
			limpa()
			
			escreva("------------------------------------------\n\n")
			escreva("Final: \n")		
			escreva("(", vencedorRodada1, ")", competidorVencedorRodada1, " X ", "(", vencedorRodada2, ")", competidorVencedorRodada2, "\n")
			escreva(" Informe o número do vencedor Ex(",vencedorRodada1,", ", vencedorRodada2 ,")-> ")
			leia(vencedorFinal)
			escreva("\n\n------------------------------------------\n\n")
			
		}

		se (vencedorRodada1 == vencedorFinal) {
			competidorVencedorFinal = competidorVencedorRodada1
		} senao se (vencedorRodada2 == vencedorFinal) {
			competidorVencedorFinal = competidorVencedorRodada2
		} senao {
			vencedorFinalValido = falso
		}

		se (vencedorFinalValido e vencedor1Valido e vencedor2Valido) {

			limpa()
			
			se (vencedorFinal == vencedorRodada1) {
				competidorVencedorFinal = competidorVencedorRodada1
			} senao se (vencedorFinal == vencedorRodada2) {
				competidorVencedorFinal = competidorVencedorRodada2
			}
			
			escreva("------------------------------------------\n\n")			
			escreva("CAMPEÃO ---------- ", competidorVencedorFinal)
			escreva("\n\n------------------------------------------\n\n")	
					
		} senao se (vencedor1Valido e vencedor2Valido) {
			limpa()	
			escreva("------------------------------------------\n\n")
			escreva(" Informe o número de um competidor dentre os competidores na lista (",vencedorRodada1,",", vencedorRodada2, "), número informado -> ", vencedorFinal)
			escreva("\n\n------------------------------------------\n\n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3000; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */