programa {

  inclua biblioteca Matematica --> M

  funcao inicio() {

    real m, a, imc
    cadeia resultado

    escreva("CÁLCULO DO IMC PARA ADULTOS:\n\n")
    
    escreva("insira a sua altura (m): ")
    leia(a)
    escreva("Insira o seu peso (kg): ")
    leia(m)

    imc = m / (a * a)
    resultado = ""

    se (imc < 18.5)
    {
      resultado += "[Magreza "
      se (imc >= 17)
      {
        resultado += "Leve]"
      }
      senao se (imc < 17 e imc >= 16)
      {
        resultado += "Moderada]"
      }
      senao se (imc < 16)
      {
        resultado += "Severa]"
      }
    }
    senao se (imc >= 18.5 e imc < 25)
    {
      resultado += "[Peso Normal]"
    }
    senao se (imc >= 25 e imc < 30)
    {
      resultado += "[Sobrepeso]"
    }
    senao se (imc >= 30)
    {
      resultado += "[Obesidade "
      se (imc < 35)
      {
        resultado += "Grau I]"
      }
      senao se (imc >= 35 e  imc < 40)
      {
        resultado += "Grau II]"
      }
      senao se (imc >= 40)
      {
        resultado += "Grau III]"
      }
    }
    real imc_aprox = M.arredondar(imc, 2)

    escreva("\nTABELA DE VALORES(IMC):\nMenor que 16: [Magreza Severa]\nEntre 16 e 16.99: [Magreza Moderada]\nEntre 17 e 18.49: [Magreza Leve]\nEntre 18.5 e 24.99: [Peso Normal]\nEntre 25 e 29.99: [Sobrepeso]\nEntre 30 e 34.99: [Obesidade Grau I]\nEntre 35 e 39.99: [Obesidade Grau II]\nMaior ou igual à 40: [Obesidade Grau III]\n")
    escreva("\nResultado: \nIMC: ", imc_aprox, "\n", resultado)

  }
}
