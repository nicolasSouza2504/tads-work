programa {

//producted by nicolas vieira de souza ADS - 1

	real matriz[3][3]	
	cadeia nomes[3]
	inteiro quantidadeCompras[3]	
	real somaTotais[3]	
	logico comprar = falso
	logico repetir = falso
	cadeia nomePesquisa	
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que mostra o total de compras de um cliente por tres meses, a quantidade e a média das compras feitas pelo mesmo \n\n")		
		escreva("------------------------------------------\n\n")
			
		para (inteiro i = 0; i < 3; i ++) {					
		 	
		 	cadeia nome = ""
		 	
		 	escreva(" Informe o nome de um cliente -> ")
		 	leia(nome)

		 	se (getIndexClientByName(nome) > -1) {					
		 		
		 		limpa()		
		 		escreva("INFORME O NOME DE UM CLIENTE AINDA NÃO CADASTRADO ")
		 		i-- 
		 		
		 	} senao {

		 		nomes[i] = nome
		 		
			 	quantidadeCompras[i] = 0	
	 	
				para (inteiro j = 0; j < 3; j ++) {
					
					limpa()
												
					escreva(" ", nomes[i], " comprou algo no mês ", j + 1, "? (verdadeiro, falso) -> ")		
					leia(comprar)
					
					real totalCompras = 0.0
					real valorCompra = 0.0
					inteiro quantidadeComprasCliente = 0
					
					
					se (comprar) {
		
						faca {
							
							escreva(" Informe o valor da compra (1, 2.0, 200) -> ")	
							leia(valorCompra)
							
							totalCompras += valorCompra
							quantidadeComprasCliente ++
	
							limpa()
	
							escreva(" ", nomes[i], " comprou algo mais no mês ", j + 1, "? (verdadeiro, falso) -> ")		
							leia(comprar)
							
													
						} enquanto (comprar)				
	
						matriz[i][j] = totalCompras					
						quantidadeCompras[i] += quantidadeComprasCliente
						
					} senao {		
						limpa()			
						matriz[i][j] = 0.0			
					}
	
					somaTotais[i] += matriz[i][j]
					
				}		
				
				limpa()

		 	}
		 			 	
			
		}


		faca {
			
			escreva("\n Digite o nome de um cliente ou 'TODOS' para exibir os respectivos valores... ")	
			leia(nomePesquisa)

			se (nomePesquisa == "TODOS") {
				exibirClientes("TODOS")				
			} senao {
				
				inteiro indexCliente = -1
				indexCliente = getIndexClientByName(nomePesquisa)

				se (indexCliente > -1) {
					exibirClientes(nomePesquisa)
				} senao {
					
					escreva("\n Digite o nome de um CLIENTE EXISTENTE ou 'TODOS' para exibir os respectivos valores... ")					
					repetir = verdadeiro
					
				}
				
			}
			
		} enquanto (repetir)
		
	}

	funcao inteiro getIndexClientByName(cadeia name) {
		
		para (inteiro i = 0; i < 3; i++) {
			
			se (nomes[i] == name) {
				retorne i
			} 
		}
		
		retorne -1
		
	}

	funcao exibirClientes(cadeia exibir) {
		
		se (exibir == "TODOS") {
			
			escreva("\n\n==============\n\n")

			para (inteiro i = 0; i < 3; i++) {
								
				exibirCliente(i)					
								
			}		

			escreva("\n\n==============\n\n")
			
			exibirMensagemPesquisarNovamente()
			
		} senao {
						
			inteiro i = getIndexClientByName(exibir)

			se (i > -1) {	
				
				escreva("\n\n==============\n\n")
				exibirCliente(i)
				escreva("\n\n==============\n\n")
				
			} 

			exibirMensagemPesquisarNovamente()
			
		}		
		
	}

	funcao exibirCliente(inteiro i) {
		
		escreva("\n Nome: ", nomes[i],", MES1: ", matriz[i][0], " MES2: ", matriz[i][1], " MES3: ", matriz[i][2], " MEDIA: ", somaTotais[i] / quantidadeCompras[i], " QTD COMPRAS: ", quantidadeCompras[i], "\n")		

	} 

	funcao exibirMensagemPesquisarNovamente() {
		escreva("\n\n- Deseja pesquisar outro cliente?? (verdadeiro, falso) ->> ")
		leia(repetir)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 509; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */