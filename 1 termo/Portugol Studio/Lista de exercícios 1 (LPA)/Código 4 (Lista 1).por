programa {
  funcao inicio() {

    real num

    escreva("insira um número para descobrir se o mesmo é positivo ou negativo:  ")
    leia(num)

    se (num < 0)
    {
      escreva(num, " é um número negativo!")
    }
    senao
    {
      escreva(num, " é um número positivo!")
    }
  }
}
