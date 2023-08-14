programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	inteiro numeroInformado
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna o mês correspondente ao número informado \n\n")
		escreva("------------------------------------------\n\n")

		escreva("Informe o número do mês desejado -> ")
		leia(numeroInformado)

		limpa()
		
		escolha (numeroInformado) {
			caso 1:
				escreva("Número informado corresponde ao mês de Janeiro! ")
				pare
			caso 2:
				escreva("Número informado corresponde ao mês de Fevereiro! ")
				pare
			caso 3:
				escreva("Número informado corresponde ao mês de Março! ")
				pare
			caso 4:
				escreva("Número informado corresponde ao mês de Abril! ")
				pare
			caso 5:
				escreva("Número informado corresponde ao mês de Maio! ")
				pare
			caso 6:
				escreva("Número informado corresponde ao mês de Junho! ")
				pare
			caso 7:
				escreva("Número informado corresponde ao mês de Julho! ")
				pare
			caso 8:
				escreva("Número informado corresponde ao mês de Agosto! ")
				pare
			caso 9:
				escreva("Número informado corresponde ao mês de Setembro! ")
				pare
			caso 10:
				escreva("Número informado corresponde ao mês de Outubro! ")
				pare
			caso 11:
				escreva("Número informado corresponde ao mês de Novembro! ")
				pare
			caso 12:
				escreva("Número informado corresponde ao mês de Dezembro! ")
				pare
			caso contrario:
				escreva("Número informado não corresponde a um mês existente no calendário ocidental! ")
				
		}
		
		escreva("\n\n")
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */