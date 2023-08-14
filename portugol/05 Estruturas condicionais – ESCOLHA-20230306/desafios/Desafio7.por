programa {

	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	caracter region, conference
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que informa como são organizadas as divisões da NFL\n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe a conferência que você deseja ver. Exemplo(A -> AFC, N -> NFC) -> ")
		leia(conference)
		limpa()
		
		escolha (conference) {
			
			caso 'A':
				
				escreva(" Informe a divisão. Exemplo(E -> east, N -> north, S -> south, W -> west) -> ")
				leia(region)
				limpa()

				escolha (region) {
					
					caso 'E':
								
						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO AFS EAST-> \n\n")
						escreva(" Buffalo Bills\n")
						escreva(" Miami Dolphins\n")
						escreva(" New England Patriots\n")
						escreva(" New York Jets\n")
						escreva("------------------------------------------\n\n")

						pare
						
					caso 'N':
					
						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO AFS NORTH -> \n\n")
						escreva(" Baltimore Ravens \n")
						escreva(" Cindinati Bengals \n")
						escreva(" Cleveland Browns \n")
						escreva(" Pitsburgh Stelers \n")
						escreva("------------------------------------------\n\n")

						pare	
						
					caso 'S':

						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO AFS SOUTH -> \n\n")
						escreva(" Houston Texans \n")
						escreva(" Indianapolis Colts \n")
						escreva(" Jacksonville jaguars \n")
						escreva(" Tenesse Titans \n")
						escreva("------------------------------------------\n\n")

						pare
					caso 'W':

						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO AFS WEST-> \n\n")
						escreva(" Denver Broncos \n")
						escreva(" kansas City Chiefs \n")
						escreva(" Oakland Ralders \n")
						escreva(" San Diego Chargers \n")
						escreva("------------------------------------------\n\n")

						pare
					caso contrario:
						escreva(" Informe uma divisam que esteja na lista de exemplo(E -> east, N -> north, S -> south, W -> west)! Region informada -> ", region)
						pare
					
				}
				pare
				
			caso 'N':
		
				escreva(" Informe a divisão. Exemplo(E -> east, N -> north, S -> south, W -> west)")
				leia(region)
				limpa()
				
				escolha (region) {
					
					caso 'E':
								
						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO NFC EAST -> \n\n")
						escreva(" Dallas Cowboys \n")
						escreva(" New York Giants \n")
						escreva(" Philadelphie Eagles \n")
						escreva(" Washington Redskins \n")
						escreva("------------------------------------------\n\n")

						pare
						
					caso 'N':
								
						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO NFC NORTH -> \n\n")
						escreva(" Chicago Bears \n")
						escreva(" Detroit Lions \n")
						escreva(" Green Bay Packers \n")
						escreva(" Minnesota Vikings \n")
						escreva("------------------------------------------\n\n")

						pare	
						
					caso 'S':
								
						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO NFC SOUTH -> \n\n")
						escreva(" Atlanta Falcons \n")
						escreva(" Carolina Panthers \n")
						escreva(" New Orleans Saints \n")
						escreva(" Tampa Boy Bucanners \n")
						escreva("------------------------------------------\n\n")

						pare
						
					caso 'W':
								
						escreva("------------------------------------------\n\n")
						escreva(" DIVISÃO NFC WEST -> \n\n")
						escreva(" Arizone Cardinals \n")
						escreva(" San Francisco 49ers \n")
						escreva(" Seattle Seahalks \n")
						escreva(" St Louis Rams \n")
						escreva("------------------------------------------\n\n")
						
						pare
						
					caso contrario:
						escreva(" Informe uma divisam que esteja na lista de exemplo(E -> east, N -> north, S -> south, W -> west)! Region informada -> ", region)
						pare
					
				}
				
				pare
				
			caso contrario: 
				escreva(" Informe um dos tipos que constam no exemplo(A -> AFC, N -> NFC)! Caracter informado -> ", conference)
				pare
				
		}

		escreva("\n\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {region, 3, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */