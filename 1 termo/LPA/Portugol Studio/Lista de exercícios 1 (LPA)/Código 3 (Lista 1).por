programa {
  funcao inicio() {

    real num

    escreva("insira um número para descobrir se o mesmo é maior, menor ou igual à 10: ")
    leia(num)

    se (num < 10)
    {
      escreva(num, " é menor que 10!")
    }
    senao se (num == 10)
    {
      escreva(num, " é igual à 10!")
    }
    senao se (num > 10)
    {
      escreva(num, " é maior que 10!")
    }
  }
}
