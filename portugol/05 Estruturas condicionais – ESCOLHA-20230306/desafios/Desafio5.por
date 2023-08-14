programa {
	
	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	inteiro codigoFormaPagamento, quantidadeParcelas
	real valorCompra, valorFinalCompra, valorParcelas
	caracter aVistaAPrazo
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que cálcula o valor total da compra de um cliente, baseado na forma de pagamento escolhida. \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o valor total da compra Exemplo:(2500.00, 45.00, 35.00) -> ")
		leia(valorCompra)

		escreva(" Informe o código da forma de pagamento. (1 -> Cheque, 2 -> Cartão de crédito, 3 -> Cartão de débito, 4 -> Dinheiro/Pix) -> ")
		leia(codigoFormaPagamento)
		limpa()
		
		escolha (codigoFormaPagamento) {
			caso 1:
				
				escreva(" Informe se o pagamento será a vista, ou à prazo. Exemplo(V -> A vista, P -> A prazo) -> ")
				leia(aVistaAPrazo)
				limpa()
				
				escolha (aVistaAPrazo) {
					caso 'V': 
						escreva("------------------------------------------\n\n")
						escreva(" Valor final compra -> R$", valorCompra," a vista!\n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso 'P': 
						escreva("------------------------------------------\n\n")
						escreva(" Valor final compra -> R$", valorCompra," à prazo!\n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso contrario: 
						escreva("------------------------------------------\n\n")
						escreva(" Informe se o pagamento será a vista, ou à prazo SEGUINDO O EXEMPLO:(V -> A vista, P -> A prazo). Valor informado: ", aVistaAPrazo)
						escreva("------------------------------------------\n\n")
					
				}
				
				pare
			caso 2:
			
				escreva(" Informe se o pagamento será a vista, ou à prazo. Exemplo(V -> A vista, P -> A prazo) -> ")
				leia(aVistaAPrazo)
				limpa()
				
				escolha (aVistaAPrazo) {
					caso 'V': 
						escreva("------------------------------------------\n\n")
						escreva(" Valor final compra -> R$", valorCompra," a vista!\n\n")
						escreva("------------------------------------------\n\n")
						pare
					caso 'P': 
						
						valorFinalCompra = valorCompra + (valorCompra * 0.05)

						escreva(" Informe o total de parcelas -> ")
						leia(quantidadeParcelas)
						limpa()
						
						se (quantidadeParcelas > 10) {
							escreva("------------------------------------------\n\n")
							escreva(" Número máximo de parcelas é 10!\n\n")
							escreva("------------------------------------------\n\n")
						} senao {
							escreva("------------------------------------------\n\n")
							escreva(" Valor final compra -> R$", valorFinalCompra," à prazo!\n")
							escreva(" Parcelas: ", quantidadeParcelas, "x", " de ", (valorFinalCompra / quantidadeParcelas), "\n\n")
							escreva("------------------------------------------\n\n")
						}

						pare
					caso contrario: 
						escreva("------------------------------------------\n\n")
						escreva(" Informe se o pagamento será a vista, ou à prazo SEGUINDO O EXEMPLO:(V -> A vista, P -> A prazo). Valor informado: ", aVistaAPrazo)
						escreva("------------------------------------------\n\n")
					
				}
				pare
			caso 3: 
					valorFinalCompra = valorCompra - (valorCompra * 0.05)
					
					escreva("------------------------------------------\n\n")
					escreva(" Valor final compra -> R$", valorFinalCompra," no débito!\n\n")
					escreva("------------------------------------------\n\n")
				pare
			caso 4: 
					valorFinalCompra = valorCompra - (valorCompra * 0.10)
					
					escreva("------------------------------------------\n\n")
					escreva(" Valor final compra -> R$", valorFinalCompra," no pix/dinheiro!\n\n")
					escreva("------------------------------------------\n\n")
				pare
			caso contrario:
				escreva(" Informe o código da forma de pagamento SEGUINDO O EXEMPLO: (1 -> Cheque, 2 -> Cartão de crédito, 3 -> Cartão de débito, 4 -> Dinheiro/Pix). Código informado -> ", codigoFormaPagamento)
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
 * @POSICAO-CURSOR = 2843; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */