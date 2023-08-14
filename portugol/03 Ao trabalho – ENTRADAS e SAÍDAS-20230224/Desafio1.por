programa {

	// Producted by nicolas
	
	cadeia a, b, saver_variable
	
	funcao inicio() {
		
		escreva("--Troca dos valores de variáveis--")
		
		escreva("\n\n Informe o valor da variável A (Ex: gato,1, 10.0) -> " )
		leia(a)
		
		escreva(" Informe o valor da variável B (Ex: gato,1, 10.0) -> " )
		leia(b)

		saver_variable = a
		
		a = b
		b = saver_variable
		
		escreva(" Valores invertidos -> " )
		escreva("\n A -> ", a)
		escreva("\n B -> ", b)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */