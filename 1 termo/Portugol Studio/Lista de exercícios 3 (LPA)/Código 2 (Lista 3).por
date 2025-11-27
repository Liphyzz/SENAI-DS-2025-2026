programa{
  inclua biblioteca Util --> U
  funcao inicio()
  {

    real lado1, lado2, base
    inteiro contador
    contador = 0

    escreva("Olá. Eu sou um programa feito para analisar se um triângulo é equilátero, isósceles ou escaleno, seja lá qual a utilidade prática disso, se você não for leigo o bastante.\n\n") 

    escreva("Digite quanto mede o primeiro lado de seu triângulo: ")
    leia(lado1) 

    escreva("Digite quanto mede o segundo lado de seu triângulo: ")
    leia(lado2) 

    escreva("Digite quanto mede a base de seu triângulo: ")
    leia(base) 

    escreva("\nAgora é hora da ação!😎\n\n")


    enquanto (contador < 101)
    {
      limpa()
      escreva ("Aguarde enquanto calculamos e computamos este complexo problema... Identificando triângulo (", lado1, "x", lado2, "x", base, ") --> Progresso: ",contador,"%")
        contador += 1
        U.aguarde(50)
    }
    escreva("\nCálculo finalizado! \n\nResultado: ")
    se (lado1 == lado2 e lado1 == base)
    {
      escreva("Seu triângulo é equilátero!\n\n") 
    }

    senao se ((lado1 == lado2 e lado1 != base) ou (lado2 == base e lado2 != lado1) ou (lado1 == base e lado1 != lado2))
    {
      escreva("Seu triângulo é isósceles!\n\n") 
    }

    senao se (lado1 != lado2 e lado1 != base)
    {
      escreva("Seu triângulo é escaleno!\n\n")
    }
    
    escreva("Trabalho concluído. Você poderá fechar o programa caso não lhe seja mais útil. Ou ele nunca foi?🤔") 
  }
}
