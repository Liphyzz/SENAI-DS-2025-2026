programa {

  inclua biblioteca Texto --> t

  funcao inicio() {
    cadeia palavra1, palavra2
    inteiro x, y, letras_iguais = 0, p1_em_p2 = 0

    escreva("insira uma palavra: ")
    leia(palavra1)

    escreva("insira uma outra palavra: ")
    leia(palavra2)

    
    para(x = 0; x < t.numero_caracteres(palavra1); x++)
    {
      caracter letra1 = t.obter_caracter(palavra1, x)

      para (y = 0; y < t.numero_caracteres(palavra2); y++)
      {
        caracter letra2 = t.obter_caracter(palavra2, y)

        se (letra1 == letra2)
        {
          letras_iguais ++
          
          se (letras_iguais == t.numero_caracteres(palavra1))
          {
            p1_em_p2 ++
          }
        }
        senao
        {
          letras_iguais = 0
        }
      }
    }
    se (p1_em_p2 >= 1)
    {
      escreva("A segunda palavra contém a primeira palavra dentro dela, ", p1_em_p2, " vezes")
    }
  }
}
