programa {

	//producted by nicolas vieira de souza ADS - 1
	
	real notaA[5]
	real notaB[5]
	real mediaNota[5]
	cadeia nomeAluno[5]
	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Cálculo da média de 5 alunos \n\n")		
		escreva("------------------------------------------\n\n")

		para (inteiro i = 0; i < 5; i++) {
			
			escreva(" Escreva o nome do ", i + 1, "° aluno Exemplo:(Vitor, Lucas, Nicolas) -> ")	
			leia(nomeAluno[i])
			
			escreva(" Escreva a primeira nota do ", i + 1, "° aluno Exemplo:(1, 7.5, 5) -> ")	
			leia(notaA[i])
			
			escreva(" Escreva a segunda nota do ", i + 1, "° aluno Exemplo:(1, 7.5, 5) -> ")
			leia(notaB[i])

			mediaNota[i] = notaA[i] + notaB[i] / 2
			limpa()
		}
		
		escreva("\n\n=====================\n\n")
		para (inteiro i = 0; i < 5; i++) {			
			escreva("\n Nome Aluno ", nomeAluno[i], "\n")
			escreva(" Média Aluno Bimestre ", mediaNota[i], "\n")			
		}
		escreva("\n\n=====================\n\n")
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