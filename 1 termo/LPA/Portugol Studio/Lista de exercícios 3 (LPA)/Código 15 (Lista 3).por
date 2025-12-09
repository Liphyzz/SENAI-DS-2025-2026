programa {

  inclua biblioteca Texto --> t
  inclua biblioteca Matematica --> m
  inclua biblioteca Util --> u

  funcao inicio() {
    cadeia num1, num2, res_bi = "", res_bi2 = "", historico[5], sinal, continuar = "s"
    inteiro i, x, operacao, resto, posicao = 0
    inteiro num_dec1, num_dec2, res_dec
    logico continuar1 = falso

    enquanto (continuar == "s") {

      escreva("\nHISTÓRICO DAS ÚLTIMAS OPERAÇÕES:\n")
      para (i = 0; i < 5; i++) {
        se (historico[i] != "") {
          escreva(" ", (i + 1), " - ", historico[i], "\n")
        }
      }
      escreva("▲-------------------------▲\n\n\n")

      // resetando variáveis para a nova operação
      res_bi = ""
      res_bi2 = ""
      num_dec1 = 0
      num_dec2 = 0
      res_dec = 0
      sinal = ""

      enquanto (continuar1 == falso) {
        escreva("\nQual operação gostaria de realizar nessa calculadora de binário? (1- SOMA / 2- SUBTRAÇÃO / 3- MULTIPLICAÇÃO / 4- DIVISÃO)\n -->  ")
        leia(operacao)

        se (operacao >= 1 e operacao <= 4) {
          continuar1 = verdadeiro
        } senao {
          escreva("Entrada inválida! Digite corretamente!\n")
        }
      }

      escreva("\nInsira o primeiro número binário: ")
      leia(num1)

      escreva("Insira o segundo número binário: ")
      leia(num2)

      // Converter primeiro binário para decimal
      inteiro comprimento1 = t.numero_caracteres(num1)
      para (i = comprimento1 - 1; i >= 0; i--) {
        caracter algarismo = t.obter_caracter(num1, i)
        se (algarismo == "1") {
          num_dec1 += m.potencia(2, (comprimento1 - i - 1))
        } senao se (algarismo != "0") {
          escreva("Entrada inválida em num1: apenas 0s e 1s são aceitos\n")
        }
      }

      // Converter segundo binário para decimal
      inteiro comprimento2 = t.numero_caracteres(num2)
      para (x = comprimento2 - 1; x >= 0; x--) {
        caracter algarismo2 = t.obter_caracter(num2, x)
        se (algarismo2 == "1") {
          num_dec2 += m.potencia(2, (comprimento2 - x - 1))
        } senao se (algarismo2 != "0") {
          escreva("Entrada inválida em num2: apenas 0s e 1s são aceitos\n")
        }
      }

      limpa()
      escreva(num1, " (",num_dec1,") ", sinal, num2, " (",num_dec2,")")

      // Operações
      se (operacao == 1) {
        res_dec = num_dec1 + num_dec2
        sinal = "+"
      } senao se (operacao == 2) {
        res_dec = num_dec1 - num_dec2
        sinal = "-"
        se (res_dec < 0) {
          escreva("O resultado ficou negativo. Garanta que o primeiro número seja maior ou igual ao segundo!\n")
        }
      } senao se (operacao == 3) {
        res_dec = num_dec1 * num_dec2
        sinal = "*"
      } senao se (operacao == 4) {
        se (num_dec2 == 0) {
          escreva("Erro: divisão por zero!\n")
          res_dec = 0
        } senao {
          res_dec = num_dec1 / num_dec2
        }
        sinal = "/"
      }

      inteiro original = res_dec

      // Converter decimal para binário (inclusive se for 0)
      se (res_dec == 0) {
        res_bi2 = "0"
      } senao {
        enquanto (res_dec > 0) {
          resto = res_dec % 2
          res_bi += resto
          res_dec = res_dec / 2
        }
        // inverter resultado binário
        para (i = t.numero_caracteres(res_bi) - 1; i >= 0; i--) {
          caracter algarismo3 = t.obter_caracter(res_bi, i)
          res_bi2 += algarismo3
        }
      }

      limpa()
      continuar1 = falso

      // salva no histórico
      historico[posicao] = num1 + " " + sinal + " " + num2 + " = " + res_bi2 + " (" + original + ")"
      posicao = (posicao + 1) % 5

      escreva("\nHISTÓRICO DAS ÚLTIMAS OPERAÇÕES:\n")
      para (i = 0; i < 5; i++) {
        se (historico[i] != "") {
          escreva(" ", (i + 1), " - ", historico[i], "\n")
        }
      }
      escreva("▲-------------------------▲\n\n")

      escreva(num1, " (",num_dec1,") ", sinal," ", num2, " (",num_dec2,")")
      escreva("\nResultado: ", res_bi2, " (", original, ")\n")
      
      u.aguarde(1000)
      escreva("\nDeseja realizar outra operação? (s/n): ")
      leia(continuar)

      limpa()
    }
  }
}
