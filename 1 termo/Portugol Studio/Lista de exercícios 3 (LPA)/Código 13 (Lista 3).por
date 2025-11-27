programa {

  inclua biblioteca Texto --> t

  funcao inicio() {
    
    cadeia palavra
    inteiro i

    escreva("escreva uma frase, e esse programa tirará magicamente os espaços dela: ")
    leia(palavra)

    escreva("\nEssa mesma frase, porém sem espaços -- > ")
    para (i = 0; i < t.numero_caracteres(palavra); i++)
    {
      caracter letra = t.obter_caracter(palavra, i)

      se (letra == " ")
      {

      }
      senao
      {
        escreva(letra)
      }

      
    }
  }
}
