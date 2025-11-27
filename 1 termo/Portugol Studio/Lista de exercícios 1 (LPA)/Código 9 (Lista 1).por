programa {
  funcao inicio() {

    real num1, num2, num3
    

    escreva("insira a medida do primeiro lado:  ")
    leia(num1)

    escreva("insira a medida do segundo lado:  ")
    leia(num2)

    escreva("insira a medida do terceiro lado:  ")
    leia(num3)

    se ((num1 < num2 + num3) e (num2 < num1 + num3) e (num3 < num1 + num2))
    {
      escreva("Lados com essas respectivas dimenções podem formar um triângulo!")
    }
    senao
    {
      escreva("Lados com essas respectivas dimenções não podem formar um triângulo!")
    }
  }
}
