programa {
	
//PRODUCTED BY Nicolas Vieira de Souza -- ADS-1

	real valorGasolina = 5.09
	real valorAlcool = 4.39
	real valorDiesel = 6.39
	real totalCombustivel, valorTotalSemDesconto, valorTotalComDesconto, descontoTotal
	cadeia tipoCombustivel
	logico tipoValido = verdadeiro
	
	
	funcao inicio() {
	
		escreva(" -- Programa para cálcular o preço dos combustíveis e informar o total a ser pago, e quanto desconto o cliente obteve -- \n\n")

		escreva(" Informe o tipo combustível. Ex:(Gasolina -> G, Alcool -> A, Diesel -> D) -> ")
		leia(tipoCombustivel)

		escreva(" Informe o total de combustível. Ex(20L -> 20.00) -> ")
		leia(totalCombustivel)

		se (tipoCombustivel == "A" e totalCombustivel <= 20) {
			
			valorTotalSemDesconto = valorAlcool * totalCombustivel
			valorTotalComDesconto = valorTotalSemDesconto - (valorTotalSemDesconto * 0.03)
			
		} senao se (tipoCombustivel == "A" e totalCombustivel > 20) {
			
			valorTotalSemDesconto = valorAlcool * totalCombustivel
			valorTotalComDesconto = valorTotalSemDesconto - (valorTotalSemDesconto * 0.05)	

		} senao se (tipoCombustivel == "G" e totalCombustivel <= 20) {

			valorTotalSemDesconto = valorGasolina * totalCombustivel	
			valorTotalComDesconto = valorTotalSemDesconto - (valorTotalSemDesconto * 0.04)	
			
		} senao se (tipoCombustivel == "G" e totalCombustivel > 20) {
			
			valorTotalSemDesconto = valorAlcool * totalCombustivel
			valorTotalComDesconto = valorTotalSemDesconto - (valorTotalSemDesconto * 0.06)	

		} senao se (tipoCombustivel == "D") {
			
			valorTotalSemDesconto = valorDiesel * totalCombustivel
			valorTotalComDesconto = valorTotalSemDesconto - (valorTotalSemDesconto * 0.02)	
			
		} senao {
			tipoValido = falso
		}
		

		limpa()

		se (tipoValido) {

			descontoTotal = valorTotalSemDesconto - valorTotalComDesconto

			escreva("------------------------------------", "\n")
			escreva(" Valor total a pagar: R$", valorTotalComDesconto, "\n") 
			escreva(" Você ganhou um desconto de: R$", descontoTotal, "\n")
			escreva("------------------------------------")

		} senao {
			escreva(" Tipo do combustível não cadastrado! Informe um tipo existente. Ex:(Gasolina -> G, Alcool -> A, Diesel -> D)")
		}

		escreva("\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */