programa {

  inclua biblioteca Matematica --> mat

  funcao inicio()
  {
    real a, b, c, res

    escreva ("Insira o primeiro número: ")
    leia (a)
    escreva ("Insira o segundo número: ")
    leia (b)
    escreva ("Insira o terceiro número: ")
    leia (c)

    res = ((mat.potencia(a, 2) + mat.potencia(b, 3) + mat.potencia(c, 4))/9.0) + 1.0

    se (res >= 0.0 e res <= 10.0)
    {
      escreva ("A expressão é 10% !")
    }
    senao se (res > 10.0 e res <= 20.0)
    {
      escreva ("A expressão é 20% !")
    }
    senao se (res > 20.0 e res <= 50.0)
    {
      escreva ("A expressão é 50% !")
    }
    senao se (res > 50.0 e res <= 75.0)
    {
      escreva ("A expressão é 75% !")
    }
    senao
    {
      escreva ("A expressão é estranha !")
    }
  }
}
