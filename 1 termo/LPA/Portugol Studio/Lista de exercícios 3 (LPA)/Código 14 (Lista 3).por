programa {

  inclua biblioteca Texto --> t

  funcao inicio() {
    
    cadeia palavra1, palavra2 = ""
    inteiro i

    escreva("escreva uma palavra, e esse programa irá inverte-la magicamente: ")
    leia(palavra1)

    para (i = t.numero_caracteres(palavra1) - 1; i >= 0; i--)
    {
      caracter letra = t.obter_caracter(palavra1, i)
      palavra2 += letra
    }
    escreva("Essa mesma palavra, porém invertida -- > ", "'", palavra2, "'\n")

    se (palavra1 == palavra2)
    {
      escreva("\n[Essa palavra É um palíndromo.]")
    }
    senao
    {
      escreva("\n[Essa palavra NÃO É um palíndromo.]")
    }
  }
}
