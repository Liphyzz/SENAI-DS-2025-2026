programa {

  inclua biblioteca Tipos --> t
  inclua biblioteca Texto --> tex

  funcao inicio() {
    cadeia numeroDigitado, baseEntrada, baseSaida
    inteiro baseOrigem, baseDestino, valorInteiro

    escreva("=== Conversor de Bases Numéricas ===\n")

    // Entrada do número
    escreva("Digite o número que deseja converter: ")
    leia(numeroDigitado)

    // Escolha da base de entrada
    escreva("Escolha a base de ENTRADA:\n")
    escreva("A - Binário (base 2)\n")
    escreva("B - Decimal (base 10)\n")
    escreva("C - Hexadecimal (base 16)\n")
    leia(baseEntrada)
    baseEntrada = tex.caixa_alta(baseEntrada)

    // Determina base de entrada
    se (baseEntrada == "A") {
      baseOrigem = 2
    } senao se (baseEntrada == "B") {
      baseOrigem = 10
    } senao se (baseEntrada == "C") {
      baseOrigem = 16
    } senao {
      escreva("Base de entrada inválida!\n")
      retorne
    }

    // Escolha da base de saída
    escreva("Escolha a base de SAÍDA:\n")
    escreva("A - Binário (base 2)\n")
    escreva("B - Decimal (base 10)\n")
    escreva("C - Hexadecimal (base 16)\n")
    leia(baseSaida)
    baseSaida = tex.caixa_alta(baseSaida)

    // Determina base de saída
    se (baseSaida == "A") {
      baseDestino = 2
    } senao se (baseSaida == "B") {
      baseDestino = 10
    } senao se (baseSaida == "C") {
      baseDestino = 16
    } senao {
      escreva("Base de saída inválida!\n")
      retorne
    }

    // Converte o número para inteiro usando a base de entrada
    se (t.cadeia_e_inteiro(numeroDigitado, baseOrigem)) {
      valorInteiro = t.cadeia_para_inteiro(numeroDigitado, baseOrigem)
    } senao {
      escreva("Número inválido para a base de entrada informada.\n")
      retorne
    }

    // Converte de inteiro para a base de saída
    escreva("\nResultado: ")
    
    cadeia resultado

resultado = t.inteiro_para_cadeia(valorInteiro, baseDestino)

enquanto (tex.obter_caracter(resultado, 1) == "0" e tex.numero_caracteres(resultado) > 1) {
  resultado = tex.extrair_subtexto(resultado, 2, tex.numero_caracteres(resultado))
}

se (baseDestino == 2) {
  resultado = "Binário: 0b" + resultado
} senao se (baseDestino == 16) {
  resultado = "Hexadecimal: " + tex.caixa_alta(resultado)
} senao {
  resultado = "Decimal: " + resultado
}

escreva(resultado)


    escreva("\n")
  }
}
