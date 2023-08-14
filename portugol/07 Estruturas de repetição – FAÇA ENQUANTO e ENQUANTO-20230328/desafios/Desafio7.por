programa {

	//producted by nicolas vieira de souza ADS - 1
	
	real valorFaturaCartaoSemJuros, valorParcela
	real valorFaturaCartaoComJuros = 0.0
	inteiro juros
	real valorJurosParcela
	logico parcelaValida = verdadeiro
	inteiro quantidadeParcelas = 0
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que valida se uma fatura pode ser ou não paga, baseando se no valor parcela do usuário\n\n")
		escreva("------------------------------------------\n\n")

		faca {
			
			escreva(" Informe valor total fatura Ex:(10.00, 100.00) -> ")
			leia(valorFaturaCartaoSemJuros)
		
			escreva(" Informe o juros mensal a ser acrecido pelo banco (%) Ex:(5% -> 5, 10% -> 10) -> ")
			leia(juros)		

			escreva(" Informe o valor total a ser pago por parcela Ex:(10.00, 100.00) -> ")
			leia(valorParcela)
			limpa()
			
			valorJurosParcela = (valorFaturaCartaoSemJuros * juros / 100)

			//PRIMEIRA PARCELA NÃO TEM JUROS SEGUINDO O EXEMPLO
			valorFaturaCartaoComJuros = valorFaturaCartaoSemJuros
			
			se (valorJurosParcela > valorParcela) {
				parcelaValida = falso
				escreva(" Valor parcela não vence os juros da fatura, informe um valor parcela maior! \n\n")
			}

		} enquanto (parcelaValida == falso)

		
		escreva("O valor mensal a ser pago será suficiente para diminuir o valor da fatura.\n")
		
		enquanto (valorFaturaCartaoComJuros > 0) {
			
			quantidadeParcelas ++
			
			escreva("\nFatura mês ", quantidadeParcelas, ": ", valorFaturaCartaoComJuros)	
			valorFaturaCartaoComJuros -= valorParcela
			valorFaturaCartaoComJuros = valorFaturaCartaoComJuros + (valorFaturaCartaoComJuros * juros / 100)
						
		}

		escreva("\n\nO valor será pago em ", quantidadeParcelas, " meses\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorFaturaCartaoSemJuros, 4, 6, 25}-{juros, 6, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */