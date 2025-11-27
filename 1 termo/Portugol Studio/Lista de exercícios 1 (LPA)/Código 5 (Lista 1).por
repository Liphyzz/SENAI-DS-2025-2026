programa {
  funcao inicio() {

    real num

    escreva("insira um número para descobrir se o mesmo é positivo, negativo ou igual à zero:  ")
    leia(num)

    se (num < 0)
    {
      escreva(num, " é um número negativo!")
    }
    senao se(num == 0)
    {
      escreva("'", num, "' é igual à zero!")
    }
    senao
    {
      escreva(num, " é um número positivos!")
    }
  }
}
