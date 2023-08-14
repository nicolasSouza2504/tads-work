programa {

//Producted by Nicolas Vieira de Souza ADS -- 1° semestre

	real gastoMes, lucroMes
	real gastoSemestral = 0
	real lucroSemestral = 0
	real saldoTotalSemestre = 0

	
	funcao inicio() {
		
		escreva("------------------------------------------\n\n")
		escreva(" Programa  que cálcula os gastos, lucros, e o saldo final de uma empresa em um semestre \n\n")
		escreva("------------------------------------------\n\n")
		limpa()

		para (inteiro i = 1; i <= 6; i++) {
			
			limpa()
			
			escreva("------------------------------------------\n\n")
			
			escreva("Informe os lucros do mês ", i, ". Exemplo(1.0, 250.0) -> ") 
			leia(lucroMes)
			lucroSemestral += lucroMes

			escreva("Informe os gastos do mês ", i, ". Exemplo(1.0, 0250.0) -> ") 
			leia(gastoMes)

			gastoSemestral += gastoMes
			
			escreva("------------------------------------------\n\n")
			limpa()
		}

		saldoTotalSemestre = lucroSemestral - gastoSemestral
		
		escreva("------------------------------------------\n\n")
			
			escreva(" Lucro total semestre: ", lucroSemestral, "\n") 
			escreva(" Gasto total semestre: ", gastoSemestral, "\n") 
			escreva(" Saldo total semestre: ", saldoTotalSemestre,"\n")

			se (saldoTotalSemestre > 0) {
				escreva(" Neste semestre, a empresa gerou lucros!", "\n")
			} senao se (saldoTotalSemestre < 0) {
				escreva(" Neste semestre, a empresa gerou prejuízos!", "\n")
			} senao {
				escreva(" Neste semestre, a empresa não gerou lucros nem prejuízos!", "\n")
			}
	
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