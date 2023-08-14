programa {

	inteiro apartamentos[6][4]
	real totalRenda = 0.0

	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que calcula a média e o total da renda de moradores de um condomínio\n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 6; i ++) {
			
			para (inteiro j = 0; j < 4; j ++) {
				escreva("Informe a renda do ", j + 1, "° ap do ", i + 1, "° andar -> ")
				leia(apartamentos[i][j])	
				totalRenda += apartamentos[i][j]
			}

			limpa()
		}

		escreva("\n\n=====RESULTADO=====\n\n")
		escreva(" Média renda total -> ", (totalRenda / 24), "\n")
		escreva(" Renda total -> ", totalRenda, "\n")
		escreva("\n\n=====RESULTADO=====\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 498; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */