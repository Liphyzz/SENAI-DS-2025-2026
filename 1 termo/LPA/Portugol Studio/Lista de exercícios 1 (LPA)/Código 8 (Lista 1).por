programa {
  funcao inicio() {

    real num1, num2, num3, maior, medio, menor
    

    escreva("insira o primeiro número:  ")
    leia(num1)

    escreva("insira o segundo número:  ")
    leia(num2)

    escreva("insira o terceiro número:  ")
    leia(num3)

    se (num1 > num2 e num1 > num3)
    {
      maior = num1
      se (num2 > num3)
      {
        medio = num2
        menor = num3
      }
      senao
      {
        medio = num3
        menor = num2
      }
    }
    senao se(num2 > num1 e num2 > num3)
    {
      maior = num2
      se (num1 > num3)
      {
        medio = num1
        menor = num3
      }
      senao
      {
        medio = num3
        menor = num1
      }
    }
    senao se(num3 > num1 e num3 > num2)
    {
      maior = num3
      se (num1 > num2)
      {
        medio = num1
        menor = num2
      }
      senao
      {
        medio = num2
        menor = num1
      }
    }
    escreva("Números em ordem crescente:\n", menor, "\n", medio, "\n", maior)
  }
}
