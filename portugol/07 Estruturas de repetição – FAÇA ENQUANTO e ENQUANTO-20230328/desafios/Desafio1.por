programa {

	//producted by nicolas vieira de souza ADS - 1
	
	inteiro votosCandidato15 = 0
	inteiro votosCandidato32 = 0
	inteiro votosCandidato44 = 0
	inteiro votosBrancos = 0
	inteiro votosNulos = 0
	inteiro codCandidato
	logico votantePresente
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que apura os resultados de uma eleição \n\n")
		escreva("------------------------------------------\n\n")

		faca {
	
			escreva(" Há algum votante para esta seção? (verdadeiro, falso) -> ")
			leia(votantePresente)

			se (votantePresente) {

				escreva("========= CANDIDATOS =========\n\n")
				escreva("| CÓDIGO | NOME \n")
				escreva("|   15   | Osmar Profundo \n")
				escreva("|   32   | Alceu Dispor \n")
				escreva("|   44   | Armando Golpe \n")
				escreva("|   0    | Voto em Branco PS(Isso não é o nome de um candidato)")
				escreva("\n\n========= CANDIDATOS =========\n\n")
		
				escreva("\nATENÇÃO: Caso o código do candidato não existir seu voto será considerado nulo \n\n")

				escreva(" Informe o código do candidato escolhido Ex.:(15, 32, 44) -> ")
				leia(codCandidato)

				escolha (codCandidato) {
					caso 15:
					
						votosCandidato15 ++
						pare
						
					caso 32:
					
						votosCandidato32 ++
						pare
						
					caso 44:
					
						votosCandidato44 ++
						pare
						
					caso 0:
					
						votosBrancos ++
						pare
						
					caso contrario:
					
						votosNulos ++
						pare
						
				}

				limpa()
											
			}
			
		} enquanto (votantePresente)

		limpa()
		escreva("==========APURAÇÃO-VOTOS==========\n\n")
		
		escreva(" Candidato Osmar Profundo: ", votosCandidato15, "\n")
		escreva(" Candidato Alceu Dispôr: ", votosCandidato32, "\n")
		escreva(" Candidato Armando Goupe: ", votosCandidato44, "\n")
		escreva(" Votos em branco: ", votosBrancos, "\n")
		escreva(" Votos nulos: ", votosNulos, "\n\n ")
		
		escreva("==========APURAÇÃO-VOTOS==========\n\n")
		
		escreva("==========RESULTADO==========\n\n")
		
		inteiro quantidadeTotalVotos = votosCandidato15 + votosCandidato32 
		+ votosCandidato44 + votosBrancos + votosNulos
		
		inteiro quantidadeVotosBrancosENulos = votosBrancos + votosNulos
		
		inteiro quantidadeVotosCandidatos =  votosCandidato15 + votosCandidato32 
		+ votosCandidato44
		
		se (quantidadeTotalVotos == 0) {
			escreva(" Eleição cancelada. Motivo: Sem Votantes!\n\n")
		} senao se (quantidadeVotosBrancosENulos > quantidadeVotosCandidatos ) {
			escreva(" Eleição cancelada. Motivo: Número de votos em branco e nulo, excedeu os votos em candidatos!\n\n")
		} senao {
			
			se (votosCandidato15 > votosCandidato32 e votosCandidato15 > votosCandidato44) {
				escreva(" Candidato Eleito: Osmar Profundo \n\n")
			} senao se (votosCandidato32 > votosCandidato15 e votosCandidato32 > votosCandidato44) {
				escreva(" Candidato Eleito: Alceu Dispôr \n\n")
			} senao se (votosCandidato44 > votosCandidato15 e votosCandidato44 > votosCandidato32) {
				escreva(" Candidato Eleito: Armando Golpe \n\n")
			} senao {
				escreva(" Empate entre os candidatos!!\n\n")
			}
			
		}
					
		escreva("==========RESULTADO==========\n\n")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */