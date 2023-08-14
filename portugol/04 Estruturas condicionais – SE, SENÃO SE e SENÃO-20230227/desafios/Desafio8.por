programa {
	
	real baseForma, alturaForma, raioForma, ladoForma, maiorLadoForma, menorLadoForma, areaForma
	cadeia tipoForma
	
	
	funcao inicio() {
	
		escreva("------------------------------------------\n\n")
		escreva(" Programa que cálcula a área em metros das seguintes formas(Retângulo, Triângulo, Círculo, Quadrado, Trapézio) \n\n")
		escreva("------------------------------------------\n\n")

		escreva(" Informe a forma. Exemplo(retangulo, triangulo, circulo, quadrado, trapezio) -> ")
		leia(tipoForma)

		se (tipoForma == "retangulo") {
			
			escreva(" Informe a base do Retângulo. Ex:(1.0,2.5) -> ")
			leia(baseForma)

			escreva(" Informe a altura do Retângulo. Ex:(1.0,2.5) -> ")
			leia(alturaForma)
			
			areaForma = baseForma * alturaForma
			
			limpa()
			escreva("------------------------------------------\n\n")
			escreva(" Área do Retângulo -> ", areaForma, "m","\n\n")
			escreva("------------------------------------------\n\n")
			
		} senao se (tipoForma == "triangulo") {
			
			escreva(" Informe a base do Triângulo. Ex:(1.0,2.5) -> ")
			leia(baseForma)

			escreva(" Informe a altura do Triângulo. Ex:(1.0,2.5) -> ")
			leia(alturaForma)
			
			areaForma = baseForma * (alturaForma / 2)
			
			limpa()
			escreva("------------------------------------------\n\n")
			escreva(" Área do Triângulo -> ", areaForma, "m","\n\n")
			escreva("------------------------------------------\n\n")
			
		} senao se (tipoForma == "circulo") {
			
			escreva(" Informe o raio do Círculo. Ex:(1.0,2.5) -> ")
			leia(raioForma)
			
			areaForma = 3.14 * raioForma * raioForma

			limpa()
			escreva("------------------------------------------\n\n")
			escreva(" Área do Círculo -> ", areaForma, "m", "\n\n")
			escreva("------------------------------------------\n\n")
			
		} senao se (tipoForma == "quadrado") {
			
			escreva(" Informe o tamanho do lado do Quadrado. Ex:(1.0,2.5) -> ")
			leia(ladoForma)
			
			areaForma = ladoForma * ladoForma
			
			limpa()
			escreva("------------------------------------------\n\n")
			escreva(" Área do Quadrado -> ", areaForma, "m","\n\n")
			escreva("------------------------------------------\n\n")
			
		} senao se (tipoForma == "trapezio") {
			
			escreva(" Informe o tamanho do maior lado do Trapézio. Ex:(1.0,2.5) -> ")
			leia(maiorLadoForma)

			escreva(" Informe o tamanho do menor lado do Trapézio. Ex:(1.0,2.5) -> ")
			leia(menorLadoForma)

			escreva(" Informe a altura do Trapézio. Ex:(1.0,2.5) -> ")
			leia(alturaForma)
			
			areaForma = (maiorLadoForma + menorLadoForma) * alturaForma /2

			limpa()
			escreva("------------------------------------------\n\n")
			escreva(" Área do Trapézio -> ", areaForma, "m", "\n")
			escreva("------------------------------------------\n\n")
			
		} senao {

			limpa()
			
			escreva("------------------------------------------\n\n")
			escreva(" Informe uma forma válida dentre as dadas de exemplo! \n\n")
			escreva("------------------------------------------\n\n")
			
		}

		escreva("\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3009; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */