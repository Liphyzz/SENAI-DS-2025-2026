programa {

  inclua biblioteca Texto --> t
  inclua biblioteca Matematica --> m
  funcao inicio() {

    cadeia num1, num2, res_bi = "", res_bi2 = ""
    inteiro i, x, num_dec1 = 0, num_dec2 = 0, res_dec, operacao, resto


    escreva("Qual operação gostaria de realizar nessa calculadora de binário? (1- SOMA / 2- SUBTRAÇÃO / 3- MULTIPLICAÇÃO / 4- DIVISÃO)\nR: ")
    leia(operacao)

    se (operacao != 1 e  operacao != 2 e operacao != 3 e operacao != 4)
    {
      escreva("Entrada inválida! Digite corretamente!")
    }


    escreva("insira o primeiro número binário: ")
    leia(num1)

    escreva("insira o segundo número: ")
    leia(num2)


    inteiro comprimento1 = t.numero_caracteres(num1)
    inteiro comprimento2 = t.numero_caracteres(num2)


    // Transforma o primeiro número binário em decimal
    para (i = comprimento1 - 1; i >= 0; i--)
    {
      caracter algarismo = t.obter_caracter(num1, i)
      se (algarismo == "0" ou algarismo == " ")
      {

      }
      senao se (algarismo == "1")
      {
        num_dec1 += m.potencia(2, (comprimento1 - i - 1))
      }
      senao
      {
        escreva("entrada inválida, são aceitos apenas 0s e 1s")
      }
    }


    // Transforma o segundo número binário em decimal
    para (x = comprimento2 - 1; x >= 0; x--)
    {
      caracter algarismo2 = t.obter_caracter(num2, x)
      se (algarismo2 == "0")
      {
        
      }
      senao se (algarismo2 == "1")
      {
        num_dec2 += m.potencia(2, (comprimento2 - x - 1))
      }
      senao
      {
        escreva("entrada inválida, são aceitos apenas 0s e 1s")
      }
    }


    se (operacao == 1)
    {
      res_dec = num_dec1 + num_dec2
    }
    senao se (operacao == 2)
    {
      res_dec = num_dec1 - num_dec2
      se(res_dec < 0)
      {
        escreva("O resultado ficou negativo, garanta de que o primeiro número é maior que o segundo!")
      }
    }
    senao se (operacao == 3)
    {
      res_dec = num_dec1 * num_dec2
    }
    senao se (operacao == 4)
    {
      res_dec = num_dec1 / num_dec2
    }


    inteiro original = res_dec // salvaando antes de alterar


    enquanto (res_dec > 0)
    {
      resto = res_dec % 2
      res_bi += resto // binário invertido
      res_dec = res_dec / 2
    }

    // invertendo a cadeia binária
    para (i = t.numero_caracteres(res_bi) - 1; i >= 0; i--)
    {
      caracter algarismo3 = t.obter_caracter(res_bi, i)
      res_bi2 += algarismo3
    }


    escreva("O resultado é: ", res_bi2, " (", original, ")")
  }
}
