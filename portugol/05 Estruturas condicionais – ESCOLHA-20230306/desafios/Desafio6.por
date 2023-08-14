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
				escreva("Número informado corresponde ao mês de Janeiro! Este mês tem 31 dias ")
				pare
			caso 2:
			
				escreva("Número informado corresponde ao mês de Fevereiro! Este mês tem 28 dias em anos comuns e 29 em anos bissextos.")
				pare
			caso 3:
				escreva("Número informado corresponde ao mês de Março! Este mês tem 31 dias  ")
				pare
			caso 4:
				escreva("Número informado corresponde ao mês de Abril! Este mês tem 30 dias ")
				pare
			caso 5:
				escreva("Número informado corresponde ao mês de Maio! Este mês tem 31 dias ")
				pare
			caso 6:
				escreva("Número informado corresponde ao mês de Junho! Este mês tem 30 dias ")
				pare
			caso 7:
				escreva("Número informado corresponde ao mês de Julho! Este mês tem 31 dias ")
				pare
			caso 8:
				escreva("Número informado corresponde ao mês de Agosto! Este mês tem 31 dias ")
				pare
			caso 9:
				escreva("Número informado corresponde ao mês de Setembro! Este mês tem 30 dias ")
				pare
			caso 10:
				escreva("Número informado corresponde ao mês de Outubro! Este mês tem 31 dias ")
				pare
			caso 11:
				escreva("Número informado corresponde ao mês de Novembro! Este mês tem 30 dias ")
				pare
			caso 12:
				escreva("Número informado corresponde ao mês de Dezembro! Este mês tem 31 dias ")
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
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */