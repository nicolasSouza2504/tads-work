programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	inteiro quantidadeImpares = 0
	inteiro quantidadePares = 0
	inteiro somaTotal = 0
	inteiro numeroInformado
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que recebe 10 números, e retorna a soma dos mesmos, a quantidade de números impares informados, e a quantidade de números pares informados! \n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 10; i++) {
			
			escreva("Informe um número. Exemplo(1,2,3,6). -> ")
			leia(numeroInformado)

			se (numeroInformado % 2 == 0) {
				quantidadePares ++
			} senao {
				quantidadeImpares ++
			}

			somaTotal += numeroInformado
				
		}

		escreva("------------------------------------------\n\n")
		escreva(" Quantidade números ímpares informados: ", quantidadeImpares,"\n")
		escreva(" Quantidade números pares informados: ", quantidadePares,"\n")
		escreva(" Soma total números: ", somaTotal, "\n\n")
		escreva("------------------------------------------\n\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */