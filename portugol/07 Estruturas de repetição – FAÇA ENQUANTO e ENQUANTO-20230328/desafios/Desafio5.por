programa {

//producted by nicolas vieira de souza ADS - 1
	
	funcao inicio() {
		
		real peso, altura, imc
		logico repetir = verdadeiro
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que calcula o imc das pessoas informadas pelo usuario \n\n")
		escreva("------------------------------------------\n\n")

		faca {
			
			escreva("Informe o peso da pessoa -> ")
			leia(peso)

			escreva("Informe a altura da pessoa -> ")
			leia(altura)
			limpa()

			imc = peso / (altura * altura)
			
			escreva("===========Resultados===========\n\n")
			escreva("IMC da pessoa é ", imc)
			escreva("\n\n===========Resultados===========\n\n")

			escreva("Deseja calcular outro IMC? Ex: (verdadeiro, falso) -> ")
			leia(repetir)			
		
		} enquanto (repetir)

	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */