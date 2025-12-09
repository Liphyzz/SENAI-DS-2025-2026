programa {
  funcao inicio()
  {
    inteiro notas
    inteiro vezes = 0
    inteiro soma = 0


    escreva ("Quantas notas serão inseridas?")
    leia (notas)

    real x[notas]
    
    

    faca
    {
      escreva ("Insira nota (valores aceitos de 0 à 10): ")
      leia (x[0])
      se (x[0] < 0.00 ou x[0] > 10.00)
      {
        faca
        {
          escreva ("Nota inválida, insira novamente (valores aceitos de 0 à 10): ")
          leia (x[0])
        }
        enquanto (x[0] < 0.00 ou x[0] > 10.00)
      }
      vezes += 1
      soma += x[0]
      x[0] += 1
    }
    enquanto (vezes <= notas)

    real media = soma/notas


    se (media >= 7.00)
    {
      escreva ("Você foi Aprovado!\n")
    }
    senao se (media >= 5.00 e media <= 6.99)
    {
      escreva ("Você ficou de Recuperação!\n")
    }
    senao
    {
      escreva ("Você foi Reprovado!\n")
    }
  }
}
