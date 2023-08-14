programa {

//producted by nicolas vieira de souza ADS - 1

	inteiro matriz[3][3]	
	cadeia nomes[3]
	logico repetir = verdadeiro
	caracter opcaoPesquisa
	cadeia nome = ""	
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que mostra o a equipe vencedora em um jogo, que tem os pontos informados pelo próprio usuário. \n\n")		
		escreva("------------------------------------------\n\n")
			
		para (inteiro i = 0; i < 3; i ++) {					
		 	
		 	nome = ""
		 	
		 	escreva(" Informe o nome da equipe -> ")
		 	leia(nome)

		 	se (getIndexEquipeByName(nome) > -1) {					
		 		
		 		limpa()		
		 		
		 		escreva("INFORME UMA EQUIPE AINDA NÃO CADASTRADA ")
		 		
		 		i-- 
		 		
		 	} senao {

		 		nomes[i] = nome		 					 
	 	
				para (inteiro j = 0; j < 3; j ++) {

					inteiro pontuacaoJogo								
																	
					escreva(" Quantos pontos a equipe ", nomes[i], " fez no jogo ", j+1, "?  ")		
					leia(pontuacaoJogo)										

					se (existePontuacaoJogo(j ,pontuacaoJogo)) {
						escreva("Pontuação ja informada para este jogo!! ")
						j--
						
					} senao {
						matriz[i][j] = pontuacaoJogo	
						limpa()
					}
					
				}		
				
				limpa()

		 	}
		 			 	
			
		}

		limpa()

		faca {
			
			escreva("\nInforme uma opção para pesquisa (a,b,c,d,e) -> \n\n")	
			escreva("a) Ver a tabela inteira;\n")
			escreva("b) Ver os nomes das equipes;\n")
			escreva("c) Ver a pontuação de uma equipe em determinado jogo;\n")
			escreva("d) Ver o nome da equipe vencedora em um jogo específico;\n")
			escreva("e) Ver o nome da equipe perdedora em um jogo específico.\n\n")			
			leia(opcaoPesquisa)

			inteiro indexJogo
			inteiro indexEquipe 
			
			escolha(opcaoPesquisa) {
				
				
				
				caso 'a':
				
					limpa()
					escreva("\n\n==============\n\n")
					
					para(inteiro i = 0; i < 3; i++) {
						exibirEquipe(i)						
					}
					
					escreva("\n\n==============\n\n")	
								
					exibirMensagemPesquisarNovamente()
					
					pare
					
				caso 'b':
				
					limpa()	
					escreva("\n\n==============\n\n")
					
					para(inteiro i = 0; i < 3; i++) {
						escreva("\n", nomeEquipeByIndice(i), "\n")
					}
					
					escreva("\n\n==============\n\n")	
								
					exibirMensagemPesquisarNovamente()
					
					pare
					
				caso 'c':

					limpa() 

					escreva("Informe o nome da equipe para pesquisa ")
					leia(nome)

					indexEquipe = getIndexEquipeByName(nome)
					indexJogo = 0
					
					se (indexEquipe > -1) {

						escreva("Informe o jogo que voce deseja visualizar a pontuação da equipe! Ex(1,2,3)")
						leia(indexJogo)
											
						se (indexJogo >= 1 e indexJogo <=3) {
							
							escreva("\n\n==============\n\n")					
							escreva("\n", nomeEquipeByIndice(indexEquipe) + jogoEquipeByIndice(indexEquipe, indexJogo -1), "\n")						
							escreva("\n\n==============\n\n")
							
							exibirMensagemPesquisarNovamente()
							
						} senao {
							escreva("INFORME UM JOGO EXISTENTE (1,2,3)!!! ")							
						}
																				
					} senao {
						escreva("INFORME O NOME DE UMA EQUIPE EXISTENTE!!! ")						
					}
					
					pare
					
				caso 'd':
					
					indexJogo = 0								

					escreva("Informe o jogo que voce deseja visualizar a pontuação da equipe! Ex(1,2,3)")
					leia(indexJogo)
										
					se (indexJogo >= 1 e indexJogo <=3) {
						
						indexEquipe = indexEquipeVencedora(indexJogo -1)						

						escreva("INDEX EQUIPE VENCEDORA: ", indexEquipe )
						escreva("\n\n==============\n\n")					
						escreva("\n", nomeEquipeByIndice(indexEquipe) + jogoEquipeByIndice(indexEquipe, indexJogo -1), "\n")						
						escreva("\n\n==============\n\n")
						
						exibirMensagemPesquisarNovamente()
						
					} senao {
						escreva("INFORME UM JOGO EXISTENTE (1,2,3)!!! ")
					}
																			
					
					pare
					
				caso 'e':
				
					indexJogo = 0							
					
					escreva("Informe o jogo que voce deseja visualizar a pontuação da equipe! Ex(1,2,3)")
					leia(indexJogo)
										
					se (indexJogo >= 1 e indexJogo <=3) {
						
						indexEquipe = indexEquipePerdedora(indexJogo -1)						
						
						escreva("\n\n==============\n\n")					
						escreva("\n", nomeEquipeByIndice(indexEquipe) + jogoEquipeByIndice(indexEquipe, indexJogo -1), "\n")						
						escreva("\n\n==============\n\n")
						
						exibirMensagemPesquisarNovamente()
						
					} senao {
						escreva("INFORME UM JOGO EXISTENTE (1,2,3)!!! ")
					}
					
					pare
					
				caso contrario: 
					
					limpa()
			 		escreva(" Escreva uma opção DENTRE AS DO EXEMPLO (a,b,c,d,e)... \n\n")
				
			}

		
		} enquanto (repetir)

		
	}

	funcao inteiro getIndexEquipeByName(cadeia name) {
		
		para (inteiro i = 0; i < 3; i++) {
			
			se (nomes[i] == name) {
				retorne i
			} 
		}
		
		retorne -1
		
	}

	funcao exibirEquipe(inteiro i) {		
		escreva("\n", nomeEquipeByIndice(i), jogoEquipeByIndice(i, 0), jogoEquipeByIndice(i, 1), jogoEquipeByIndice(i, 2), "\n")		
	} 

	funcao cadeia nomeEquipeByIndice(inteiro i) {		
		retorne "Nome: " + nomes[i] +  " "		
	} 

	funcao cadeia jogoEquipeByIndice(inteiro indexEquipe, inteiro indexJogo) {
		retorne " JOGO " + (indexJogo + 1) + ": " + matriz[indexEquipe][indexJogo] + " "
	}

	funcao exibirMensagemPesquisarNovamente() {
		escreva("\n\n- Deseja pesquisar novamente?? (verdadeiro, falso) ->> ")
		leia(repetir)
	}

	funcao inteiro indexEquipeVencedora(inteiro indexJogo) {
		
		inteiro equipeVencedora = 0

		para (inteiro i = 0; i < 3; i++) {		

			se (matriz[i][indexJogo] > matriz[equipeVencedora][indexJogo]) {
				equipeVencedora = i
			}			
			
		}
		
		
		retorne equipeVencedora
		
	}

	funcao inteiro indexEquipePerdedora(inteiro indexJogo) {
		
		inteiro equipePerdedora = 0		

		para (inteiro i = 0; i < 3; i++) {		

			se (matriz[i][indexJogo] < matriz[equipePerdedora][indexJogo]) {
				equipePerdedora = i
			}			
			
		}
		
		
		retorne equipePerdedora
		
	}

	funcao logico existePontuacaoJogo(inteiro jogo, inteiro pontuacao) {

		logico existe = falso
		
		para (inteiro i = 0; i < 3; i++) {
			
			se (matriz[i][jogo] == pontuacao) {
				existe = verdadeiro
					
			}
			
		}

		retorne existe
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */