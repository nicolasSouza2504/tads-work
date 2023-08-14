programa {

	//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1
	
	inteiro numeroInformado, antecessorNumeroInformado, sucessorNumeroInformado
	
	funcao inicio() {
		
		escreva(" --- Desafio: Acerte o antecessor e o sucessor do número informado! --- \n\n")

		escreva(" Informe um número para validação. Ex(10) -> ")
		leia(numeroInformado)

		escreva(" Informe o antecessor do número informado. Ex(10) -> ")
		leia(antecessorNumeroInformado)

		escreva(" Informe o sucessor do número informado. Ex(10) -> ")
		leia(sucessorNumeroInformado)

		se (antecessorNumeroInformado == (numeroInformado -1) e sucessorNumeroInformado == (numeroInformado + 1)) {
			escreva("\n Você venceu o desafio !!!! \n\n")
		} senao se (antecessorNumeroInformado != (numeroInformado -1) e sucessorNumeroInformado == (numeroInformado + 1)) {
			escreva("\n Você informou o antecessor incorreto! \n")
		} senao se (sucessorNumeroInformado != (numeroInformado + 1) e antecessorNumeroInformado == (numeroInformado -1)) {
			escreva("\n Você informou o sucessor incorreto! \n")
		} senao {
			escreva("\n Você informou o sucessor e o antecessor incorretos! \n")
		}
		
		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1141; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */