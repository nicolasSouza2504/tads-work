programa {
	
	//producted by nicolas vieira de souza ADS - 1
	
	inclua biblioteca Util
	
	inteiro matriz[40][40]
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que lista os produtos de uma prateleira \n\n")		
		escreva("------------------------------------------\n\n")

		escreva("\n 0. vazio ")
		escreva("\n 1. xampu ")
		escreva("\n 2. condicionador")
		escreva("\n 3. hidratante ")
		escreva("\n 4. tintura ")
		escreva("\n 5. demaquilante \n")
		
		para (inteiro i = 0; i < 40; i++) {

			para (inteiro j = 0; j < 40; j++) {

				inteiro cod = Util.sorteia(0,5)
							
				//escreva(" \n Informe o código do ", j + 1, "° produto da estante seguindo a tabela de exemplo -> ")
				//leia(cod)

				se (cod >= 0 e cod <= 5) {
					matriz[i][j] = cod
				} senao {
					escreva(" \n Informe o código do ", j + 1, "° produto da estante SEGUINDO A TABELA de exemplo -> ")
					j--
				}
				
			}
			
		}

		inteiro qtdeVazios = 0
		inteiro qtdeXampu = 0
		inteiro qtdeCondicionador = 0
		inteiro qtdeHidratante = 0
		inteiro qtdeTintura = 0
		inteiro qtdeDemaquilante = 0

		para (inteiro i = 0; i < 40; i++) {

			para (inteiro j = 0; j < 40; j++) {			
		
				escolha(matriz[i][j]) {
					caso 0: 
					
						qtdeVazios++
						
						pare
						
					caso 1:
					
						qtdeXampu++
						
						pare
						
					caso 2:
					
						qtdeCondicionador++
						
						pare
						
					caso 3:
					
						qtdeHidratante++
						
						pare
					
					caso 4:
					
						qtdeTintura++
						
						pare
						
					caso 5:
					
						qtdeDemaquilante++
						
						pare					
					
				}
				
			}
			
		}

		escreva("\n=========TOTAIS=========\n")
		escreva(" Quantidade vazias -> ", qtdeVazios, "\n")
		escreva(" Quantidade xampu -> ", qtdeXampu, "\n")
		escreva(" Quantidade condicionador -> ", qtdeCondicionador, "\n")
		escreva(" Quantidade hidratante -> ", qtdeHidratante, "\n")
		escreva(" Quantidade tintura -> ", qtdeTintura, "\n")
		escreva(" Quantidade demaquilante -> ", qtdeDemaquilante, "\n")
		escreva("\n=========TOTAIS=========\n")
		
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 65; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */