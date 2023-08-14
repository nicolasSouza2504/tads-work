programa {

	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	inteiro somaNumerosPares = 0
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna a soma dos números pares de 100 a 200! \n\n")
		escreva("------------------------------------------\n\n")
		
		para (inteiro i = 100; i <= 200; i++) {
			
			se (i % 2 == 0) {
				somaNumerosPares += i
			}
			
		}

		escreva(" Soma dos números pares de 100 a 200: ", somaNumerosPares)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */