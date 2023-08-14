programa {

//producted by nicolas vieira de souza ADS - 1
	
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna o maior dentre os tres números informados \n\n")		
		escreva("------------------------------------------\n\n")
		inteiro int1, int2, int3
		
		int1 = leNumero(1)
		int2 = leNumero(2)
		int3 = leNumero(3)
		
		exibeMenorNumero(int1, int2, int3)

	}

	funcao inteiro leNumero(inteiro posicao) {
		
	 	inteiro int 
	 	
		escreva(" Informe o ", posicao, "° número -> ")
		leia(int)
		
	 	retorne int
		
	}

	funcao exibeMenorNumero(inteiro int1, inteiro int2, inteiro int3) {
		
		inteiro menorNumero = 0

		se (int1 < int2 e int1 < int3) {
			menorNumero = int1
		} senao se (int2 < int1 e int2 < int3) {
			menorNumero = int2
		} senao se (int3 < int1 e int3 < int2) {
			menorNumero = int3
		}

		limpa()
		escreva("Menor número = ", menorNumero, "\n\n")	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */