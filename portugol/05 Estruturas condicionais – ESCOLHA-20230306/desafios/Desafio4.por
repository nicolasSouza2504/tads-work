programa {

	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	cadeia categoria
	caracter subCategoria
	inteiro codigoCategoria
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna uma sugestão de conteúdo baseado nos gostos do usuário \n\n")
		escreva("------------------------------------------\n\n")

		escreva("Informe o código da categoria desejada (1 -> Filmes, 2 -> Séries, 3 -> Documentários) -> ")
		leia(codigoCategoria)

		limpa()
		
		escolha (codigoCategoria) {
			caso 1:
				
				categoria = "filme"
				escreva("Informe uma letra de uma subcategoria de filme dentre as seguintes: (D -> Drama, A -> Ação) -> ")
				leia(subCategoria)
				limpa()
						
				escolha (subCategoria) {
					
					caso 'D': 
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de filme: Ex_Machina: Instinto Artificial \n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso 'A': 
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de filme: Minority Report \n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso contrario: 
						escreva("Informe uma letra de uma subcategoria de filme dentre as seguintes: (D -> Drama, A -> Ação). Subcategoria informada -> ", subCategoria)
						
				}
					
				pare
				
			caso 2: 
				
				categoria = "serie"
				escreva("Informe uma letra de uma subcategoria de série dentre as seguintes: (S -> Suspense, F -> Ficção Cíentífica) -> ")
				leia(subCategoria)
				limpa()
				
				escolha (subCategoria) {
					
					caso 'S': 
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de série: Black Mirror\n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso 'F': 
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de série: Better Than Us \n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso contrario: 
						escreva("Informe uma letra de uma subcategoria de série dentre as seguintes: (S -> Suspense, F -> Ficção Cíentífica). Subcategoria informada -> ", subCategoria)
						
				}
					
				pare
				
			caso 3:
				
				escreva("Informe uma letra de uma subcategoria de documentário dentre as seguintes: (T -> Técnologia, B -> Biografia) -> ")
				leia(subCategoria)
				limpa()
				
				escolha (subCategoria) {
					
					caso 'T': 
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de documentário: Watson da IBM: a máquina mais inteligente da Terra\n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso 'B': 
						escreva("------------------------------------------\n\n")
						escreva(" Sugestão de documentário: O Código Bill Gates\n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso contrario: 
						escreva("Informe uma letra de uma subcategoria de série dentre as seguintes: (S -> Suspense, F -> Ficção Cíentífica). Subcategoria informada -> ", subCategoria)
						
				}
					
				pare
				
			caso contrario: 
				escreva("Informe o número de uma categoria que esteja neste exemplo: (1 -> Filmes, 2 -> Séries, 3 -> Documentários). Número informado -> ", codigoCategoria)
			
		}
		
		escreva("\n\n")
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