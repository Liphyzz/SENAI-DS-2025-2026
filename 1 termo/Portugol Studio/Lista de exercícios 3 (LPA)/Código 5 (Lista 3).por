programa {
  funcao inicio() {
    
    real temperatura, resultado
    inteiro conversao
    cadeia medida = ""

      escreva("Escolha a conversão que deseja usar (1- Celsius para Fahrenheit / 2- Fahreinheit para Celsius): ") 
      leia(conversao)

      escreva("\nTemperatura à ser convertida: ")
      leia(temperatura)
      

      se (conversao == 1)
      {
        limpa()
        escreva("--CELSIUS PARA FAHRENHEIT--")
        escreva("\nTemperatura à ser convertida: ", temperatura, "℃")

        //Resultado em Fahreinheit
        resultado = (temperatura * 9/5) + 32
        medida += "℉"
      }
      senao se (conversao == 2)
      {
        limpa()
        escreva("--FAHRENHEIT PARA CELSIUS--")
        escreva("\nTemperatura à ser convertida: ", temperatura, "℉")

        //Resultado em Celsius
        resultado = (5/9) * (temperatura - 32)
        medida += "℃"
      }

      escreva("\nResultado da conversão: ", resultado, medida, "\n😊")
  }
}
