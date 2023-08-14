programa {
	
	// producted by nicolas vieira de souza ADS 1	

	cadeia terrenos[3] =  {"Árido", "Semi-árido", "Tropical"}
	cadeia nomes[3][3] = {{"Acácia", "Tamarindo","Palmeira das canárias"},  {"Aroeira-vermelha", "Cacto","Caroá"}, {"Arvore do Viajante", "Flor de Abril","Tulipeira"}}
	cadeia cuidados [3][3] = {{"Sol", "Temperatura", "Regagem"}, {"Temperatura", "Sol", "Regagem"}, {"Regagem", "Sol", "Temperatura"}}
	logico exigePoda[3][3] = {{falso, falso, verdadeiro},  {verdadeiro, falso, falso}, {verdadeiro, falso, falso}}
	
	caracter opcao = 'z' 
	logico repetir = verdadeiro
	
	funcao inicio() {
		
		escreva("\n\n===========================\n\n")
		escreva(" Programa que  controla o reflorestamento de uma área, por meio da plantação de árvores")
		escreva("\n\n===========================\n\n")

		faca {
			
			escreva(" \n\n Informe oque você deseja visualizar seguindo a tabela -> ")
			exibirOpcoes()
			leia(opcao)
	
			escolha (opcao) {
	
				caso 'a':
					
					exibirTodas()
					
					pare
					
				caso 'b':
					
					exibirArvoresPorTerreno()
					
					pare
					
				caso 'c': 
	
					exibirArvoresQueExigemPoda()
					
					pare
					
				caso 'd':
				
					exibirArvoresPorCuidado()
					
					pare
					
				caso contrario:
					
					limpa()					
					escreva("INFORME A OPÇÃO DE EXIBIÇÃO SEGUINDO O EXEMPLO!")
					
					pare				
				
			}
			
			escreva("\n\n Deseja exibir novamente? (verdadeiro, falso) -> ")
			leia(repetir)
			limpa()
			
		} enquanto(repetir) 	
			
	}

	funcao exibirOpcoes() {
		escreva("\n\n===========================\n")
		escreva("a. Todas as árvores; \n")
		escreva("b. Árvores por terreno; \n")
		escreva("c. Árvores que exigem poda; \n")
		escreva("d. Árvores por cuidados.")
		escreva("\n===========================\n")
	}

	funcao exibirTodas() {

		escreva("\n\n===========================")
		
		para	 (inteiro i = 0; i < 3; i++) {
						
			para (inteiro j = 0; j < 3; j++) {
				escreva("\n",nomes[i][j])
			}
			
		}
		
		escreva("\n\n===========================\n")
		
	}

	funcao exibirArvoresPorTerreno() {

		
		escreva("\n\n===========================")
		
		para	 (inteiro i = 0; i < 3; i++) {
						
			escreva("\n\nÁrvores terreno ", terrenos[i], ":\n") 	
			
			para (inteiro j = 0; j < 3; j++) {
				escreva("\n",nomes[i][j])
			}
			
		}
		
		escreva("\n\n===========================\n")
		
		
	}

	funcao exibirArvoresQueExigemPoda() {
		
		escreva("\n\n===========================")
		
		para	 (inteiro i = 0; i < 3; i++) {
						
			para (inteiro j = 0; j < 3; j++) {
				
				se (exigePoda[i][j]) {
					escreva("\n",nomes[i][j])
				}
				
			}
			
		}
		
		escreva("\n\n===========================\n")
		
	}

	funcao exibirArvoresPorCuidado() {
		
		cadeia cuidadosVetor[3] = {"Regagem", "Sol", "Temperatura"}
		
		escreva("\n\n===========================")		
		
		para	 (inteiro i = 0; i < 3; i++) {
			
			escreva("\n\nÁrvores cuidado: ", cuidadosVetor[i], "\n")					
			
			para (inteiro j = 0; j < 3; j++) {

				para (inteiro k = 0; k < 3; k ++) {
					
					se (cuidados[i][j] == cuidadosVetor[i]) {
						escreva("\n", nomes[j][k])
					}
					
				}
				
				
			}
			
		}
				
		escreva("\n\n===========================\n")
		
	}


	

}
