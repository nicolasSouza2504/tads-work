programa {
	

	//producted by nicolas vieira de souza ADS - 1
	
	funcao inicio()
 {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna tabuada do número informado \n\n")		
		escreva("------------------------------------------\n\n")

		inteiro numero = leNumero()
		exibirResultado(numero)
	}

	funcao inteiro leNumero() {

		inteiro numero
		
		escreva(" Informe um número -> ")
		leia(numero)
		
		retorne numero
	}

	funcao exibirResultado(inteiro numero) {

		limpa()
		escreva("Tabuada do número ", numero, "\n\n")
		
		para (inteiro i = 1; i <= 10; i++) {
			escreva(numero, " x ", i, " = ", (numero * i), "\n")
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */