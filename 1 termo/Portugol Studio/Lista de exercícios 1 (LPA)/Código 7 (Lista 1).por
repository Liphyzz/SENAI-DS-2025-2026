programa {
  funcao inicio() {

    real num1, num2, num3, soma = 0
    

    escreva("insira o primeiro número:  ")
    leia(num1)

    escreva("insira o segundo número:  ")
    leia(num2)

    escreva("insira o terceiro número:  ")
    leia(num3)

    se (num1 > num2 e num1 > num3)
    {
      soma += num1
      se (num2 > num3)
      {
        soma += num2
      }
      senao
      {
        soma += num3
      }
    }
    senao se(num2 > num1 e num2 > num3)
    {
      soma += num2
      se (num1 > num3)
      {
        soma += num1
      }
      senao
      {
        soma += num3
      }
    }
    senao se(num3 > num1 e num3 > num2)
    {
      soma += num3
      se (num1 > num2)
      {
        soma += num1
      }
      senao
      {
        soma += num2
      }
    }
    escreva("Os dois maiores números somados tem o valor de ", soma)
  }
}
