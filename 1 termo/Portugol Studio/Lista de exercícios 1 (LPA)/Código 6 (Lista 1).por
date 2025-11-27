programa {
  funcao inicio() {

    real num1, num2, num3

    escreva("insira o primeiro número:  ")
    leia(num1)

    escreva("insira o segundo número:  ")
    leia(num2)

    escreva("insira o terceiro número:  ")
    leia(num3)

    se (num1 > num2 e num1 > num3)
    {
      escreva(num1, " é o maior número!")
    }
    senao se(num2 > num1 e num2 > num3)
    {
      escreva(num2, " é o maior número!")
    }
    senao se(num3 > num1 e num3 > num2)
    {
      escreva(num3, " é o maior número!")
    }
  }
}
