programa {
  
  funcao inicio()
  {
    inteiro n
    inteiro contador = 0
    inteiro divisor = 1

    escreva("Digite o número a ser confirmado como primo ou não: ")
    leia(n)

    se (n <= 1)
    {
      escreva("'",n,"' não é primo!")
    }
    senao
    {
      enquanto (divisor <= n)
      {
        se (n % divisor == 0)
        {
          contador += 1
        }
        divisor += 1
      }
      se (contador == 2)
      {
        escreva ("'",n,"' é primo!")
      }
      senao
      {
        escreva("'",n,"' não é primo!")
      }
    }
  }
}
