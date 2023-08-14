programa{

//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1

	real lucroJaneiro, lucroFevereiro, lucroMarco, lucroAbril, lucroMaio, lucroJunho, gastoJaneiro, gastoFevereiro, gastoMarco, gastoAbril, gastoMaio, gastoJunho,lucroBrutoSemestral, gastoBrutoSemestral, saldoSemestral
	
	funcao inicio() {
		
		escreva("--- Relatório de lucro x custos semestrais ---\n\n")

//------JANEIRO
		escreva(" Informe os lucros de Janeiro. Ex(1500.00) -> ")
		leia(lucroJaneiro)

		escreva(" Informe os gastos de Janeiro. Ex(1500.00) -> ")
		leia(gastoJaneiro)
//------FEVEREIRO
		escreva(" Informe os lucros de Fevereiro. Ex(1500.00) -> ")
		leia(lucroFevereiro)

		escreva(" Informe os gastos de Fevereiro. Ex(1500.00) -> ")
		leia(gastoFevereiro)
//------MARCO
		escreva(" Informe os lucros de Março. Ex(1500.00) -> ")
		leia(lucroMarco)

		escreva(" Informe os gastos de Março. Ex(1500.00) -> ")
		leia(gastoMarco)
//------ABRIL
		escreva(" Informe os lucros de Abril. Ex(1500.00) -> ")
		leia(lucroAbril)

		escreva(" Informe os gastos de Abril. Ex(1500.00) -> ")
		leia(gastoAbril)
//------MAIO
		escreva(" Informe os lucros de Maio. Ex(1500.00) -> ")
		leia(lucroMaio)

		escreva(" Informe os gastos de Maio. Ex(1500.00) -> ")
		leia(gastoMaio)
//------JUNHO
		escreva(" Informe os lucros de Junho. Ex(1500.00) -> ")
		leia(lucroJunho)

		escreva(" Informe os gastos de Junho. Ex(1500.00) -> ")
		leia(gastoJunho)

		lucroBrutoSemestral = (lucroJaneiro + lucroFevereiro + lucroMarco + lucroAbril + lucroMaio + lucroJunho)
		gastoBrutoSemestral = (gastoJaneiro + gastoFevereiro + gastoMarco + gastoAbril + gastoMaio + gastoJunho)
		saldoSemestral = lucroBrutoSemestral - gastoBrutoSemestral

		escreva("\n Gasto bruto semestre -> R$", gastoBrutoSemestral)
		escreva("\n Lucro bruto semestre -> R$", lucroBrutoSemestral)
		escreva("\n Saldo total semestre -> R$", saldoSemestral)

		se (lucroBrutoSemestral > gastoBrutoSemestral) {
			escreva("\n A empresa obteve lucro no semestre")
		} senao se (lucroBrutoSemestral < gastoBrutoSemestral) {
			escreva("\n A empresa obteve prejuízo no semestre")
		} senao {
			escreva("\n A empresa não obteve lucro nem prejuizo neste semestre")
		}

		escreva("\n")
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */