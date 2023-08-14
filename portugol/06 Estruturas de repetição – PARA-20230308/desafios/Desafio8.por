programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	inteiro idadeFuncionario
	inteiro somaIdadeFuncionarios = 0
	inteiro mediaIdadeFuncionarios
	cadeia tipoEquipe
	
	funcao inicio() {
				
		escreva("------------------------------------------\n\n")
		escreva(" Programa que retorna se uma equipe é jovem, adulta, ou idosa baseado na idades dos colaboradores! \n\n")
		escreva("------------------------------------------\n\n")

		para (inteiro i = 1; i <= 5; i ++) {

			escreva(" Informe a idade do ", i, "° colaborador -> ")	
			leia(idadeFuncionario)

			somaIdadeFuncionarios += idadeFuncionario
			
		}

		mediaIdadeFuncionarios = somaIdadeFuncionarios / 5
		limpa()

		se (mediaIdadeFuncionarios <= 25 e mediaIdadeFuncionarios > 0) {
			tipoEquipe = "Jovem"		
		} senao se (mediaIdadeFuncionarios >= 26 e mediaIdadeFuncionarios <= 60) {
			tipoEquipe = "Adulta"
		} senao se (mediaIdadeFuncionarios > 60) {
			tipoEquipe = "Idosa"
		}
		
		escreva("------------------------------------------\n\n")
		escreva("RESPOSTA:\n\n")
		escreva(" A equipe é ", tipoEquipe, "\n\n")
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