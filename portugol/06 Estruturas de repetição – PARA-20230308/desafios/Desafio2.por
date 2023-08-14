programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre
	
	cadeia nomeIngressante
	inteiro idadeIngressante
	inteiro quantidadeNegadoEntrada = 0
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna a quantidade de pessoas liberadas para entrar no show, baseado nos ingressantes informados!  \n\n")
		escreva("------------------------------------------\n\n")


		para (inteiro i = 0; i < 10; i++) {
			
			escreva("Informe o nome do ingressante Exemplo:(nicolas, gabriel, vinicius) -> ")
			leia(nomeIngressante)

			escreva("Informe a idade do ingressante Exemplo:(19,55,70) -> ")		
			leia(idadeIngressante)
			limpa()

			se (idadeIngressante >= 18) {
				escreva("Permitido a entrada do ingressante ", nomeIngressante, "! \n\n")
			} senao {
				escreva("Negado a entrada do ingressante ", nomeIngressante, "! \n\n")		
				quantidadeNegadoEntrada ++
			}

		}

		escreva("\n\n------------------------------------------\n\n")
		escreva(" Total de pessoas entrada proibida -> ", quantidadeNegadoEntrada, "\n\n")
		escreva("------------------------------------------\n\n")

	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */