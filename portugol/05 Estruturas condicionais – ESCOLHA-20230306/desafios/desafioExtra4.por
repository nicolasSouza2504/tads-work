programa {
	
	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	caracter tipoCarro
	inteiro anoCarro 
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa apresenta modelos de carros para o cliente, baseado no tipo e no ano! \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o tipo do carro, baseado no exemplo abaixo: ")
		escreva("S -> Sedã \n")
		escreva("H-> Hatch \n")
		escreva("C -> Conversível \n")
		escreva("P -> Picape \n")
		escreva("M -> Minivan \n")
		escreva("Tipo Desejado: ")
		leia(tipoCarro)
		limpa()

		escreva(" Informe uma das opções de ano disponíveis: (Anos disponíveis: 2015, 2018, 2023) ")
		leia(anoCarro)
		limpa()

		escolha (tipoCarro) {
			
			caso 'S':
				
				escolha (anoCarro) {
					
					caso 2015:
							
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Jetta; \n")
						escreva(" Civic; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
						
					caso 2018:
						
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Jetta; \n")
						escreva(" Civic; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso 2023:
						
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Jetta; \n")
						escreva(" Civic; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso contrario:
						escreva(" Informe uma das opções de ano disponíveis! (Anos disponíveis: 2015, 2018, 2023). Ano informado -> ", anoCarro)
						pare
				}
				
				pare
				
			caso 'H': 
				
				escolha (anoCarro) {
					
					caso 2015:
					
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Up; \n")
						escreva(" Sandero; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso 2018:

						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Gol; \n")
						escreva(" Argo; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso 2023:
		
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" HB20; \n")
						escreva(" Fit; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso contrario:
					
						escreva(" Informe uma das opções de ano disponíveis! (Anos disponíveis: 2015, 2018, 2023). Ano informado -> ", anoCarro)
						pare
						
				}
				
				pare
				
			caso 'C':

				escolha (anoCarro) {
					caso 2015:
	
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Camaro; \n")
						escreva(" BMW; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso 2018:
	
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" AUDI TT; \n")
						escreva(" Porsche; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")

						pare
					caso 2023:
						
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Peugeot 308 ; \n")
						escreva(" Ferrari; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
					caso contrario:
						escreva(" Informe uma das opções de ano disponíveis! (Anos disponíveis: 2015, 2018, 2023). Ano informado -> ", anoCarro)
						pare
				}
				
				pare
				
			caso 'P':
			
				escolha (anoCarro) {
					caso 2015:
						
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Ford Toro; \n")
						escreva(" Amarok; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
					caso 2018:
						
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Hilux; \n")
						escreva(" Ranger; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
					caso 2023:
									
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Dodge Ram; \n")
						escreva(" Tracker; \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
					caso contrario:
						escreva(" Informe uma das opções de ano disponíveis! (Anos disponíveis: 2015, 2018, 2023). Ano informado -> ", anoCarro)
						pare
				}
				
				pare
				
			caso 'M':
			
				escolha (anoCarro) {
					caso 2015:
					
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Doblo; \n")
						escreva(" BYD D1 \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
						
					caso 2018:
						
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Chevrolet Spin; \n")
						escreva(" Kia Carnival\n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
					caso 2023:
					
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de carros: \n\n")
						escreva(" Zafira; \n")
						escreva(" Perua \n")
						escreva("  \n\n")
						escreva("------------------------------------------\n\n")
						
						pare
					caso contrario:
						escreva(" Informe uma das opções de ano disponíveis! (Anos disponíveis: 2015, 2018, 2023). Ano informado -> ", anoCarro)
						pare
				}
				
				pare
				
			caso contrario: 
				
				escreva(" Informe o tipo do carro, baseado no exemplo abaixo!! \n\n")
				escreva("S -> Sedã \n")
				escreva("H-> Hatch \n")
				escreva("C -> Conversível \n")
				escreva("P -> Picape \n")
				escreva("M -> Minivan \n")
				escreva("Tipo Informado: ", tipoCarro)
				
				pare
				
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */