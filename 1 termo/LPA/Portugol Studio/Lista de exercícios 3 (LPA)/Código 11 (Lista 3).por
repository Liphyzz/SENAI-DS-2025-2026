programa {

  inclua biblioteca Texto --> t

  funcao inicio() {
    
    cadeia palavra
    inteiro i

    escreva("escreva uma palavra, e esse programa irá inverte-la magicamente: ")
    leia(palavra)

    escreva("\nEssa mesma palavra, porém invertida -- > ")
    para (i = t.numero_caracteres(palavra) - 1; i >= 0; i--)
    {
      caracter letra = t.obter_caracter(palavra, i)
      escreva(letra)

      }
    }
  }
}
