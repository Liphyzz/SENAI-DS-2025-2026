programa { 
  funcao inicio() { 

    inteiro ano
    cadeia continuar
    logico x = verdadeiro

    enquanto(x == verdadeiro)
    {
      escreva("\n\nQuer saber se um ano é bissexto?: ")
      leia(continuar)

      escolha(continuar){

        caso "s":
        caso "S":
        caso "sim":
        caso "Sim":
        caso "SIM":

          x = verdadeiro
          escreva ("digite um ano: ")
          leia(ano) 
      
          se(ano % 4 == 0)
          { 
            se (ano % 100 == 0)
            {
              se (ano % 400 == 0)
              {
                escreva(ano," é um ano bissexto!") 
              }
              
              senao
              {
                escreva(ano," não é um ano bissexto!") 
              }
            }

            senao
            {
              escreva(ano," é um ano bissexto!") 
            }
          } 

          senao
          {
            escreva(ano," não é um ano bissexto!")
          }

        caso "n":
        caso "N":
        caso "não":
        caso "Não":
        caso "NÃO":
          x = falso

        caso contrario:
          x = verdadeiro
          escreva("Entrada inválida")
      }
    }

  }
}
