programa {
  funcao inicio()
  {
    real a, b, c, d

    escreva ("insira a primeira nota: ")
    leia (a)
    escreva ("insira a segunda nota: ")
    leia (b)
    escreva ("insira a terceira nota: ")
    leia (c)
    escreva ("insira a quarta nota: ")
    leia (d)

    real media = (a+b+c+d)/4

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
