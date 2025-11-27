programa {
  funcao inicio() {

    inteiro tipos
    real largura
    real comprimento
    inteiro quant
    real total = 0
    inteiro x = 0


    escreva("Quantos TIPOS de casas teram nesse terreno?: ")
    leia(tipos)

    faca
    {
      escreva("\n", (x + 1),"º TIPO DE CASAS:\n")

      escreva("Qual a largura desse tipo de casa em metros?: ")
      leia(largura)

      escreva("Qual o comprimento desse tipo de casa em metros?: ")
      leia(comprimento)

      escreva("Quantas casas desse tipo terão no terreno?: ")
      leia(quant)

      total += (largura * comprimento * quant)

      x++

    }enquanto(x < tipos)

    escreva("\n\nRESULTADO: A área mínima que esse terreno deve ter (se as casas estiverem todas 'grudadas') é de ", total, "m²")
  }
}
