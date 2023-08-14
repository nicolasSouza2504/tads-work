programa {

	//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	inteiro intervaloDe, intervaloAte
	inteiro somaPares = 0
	
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna os números pares em um intervalo De, Até e a soma dos mesmos!  \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe o primeiro número do intervalo Exemplo:(1, 5, 9) -> ")
		leia(intervaloDe)

		escreva(" Informe o segundo número do intervalo Exemplo:(1, 5, 9) -> ")
		leia(intervaloAte)
		limpa()
		
		para (inteiro i = intervaloDe; i <= intervaloAte; i++) {
			
			se (i % 2 == 0) {
				escreva("Número par -> ", i, "\n")
				somaPares += i
			}
			
		}
	
		escreva("\n Soma dos números pares -> ", somaPares,"\n\n")

	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 74; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */