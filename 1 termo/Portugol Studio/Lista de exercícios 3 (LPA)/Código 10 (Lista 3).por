programa {

  inclua biblioteca Texto --> t

  funcao inicio() {
    caracter vogais [44] = {"a", "á", "à", "â", "ã", "A", "Á", "À", "Â", "Ã", "e", "é", "è", "ê", "E", "É", "È", "Ê",
     "i", "í", "ì", "î", "I", "Í", "Ì", "Î", "o", "ó", "ò", "ô", "õ", "O", "Ó", "Ò", "Ô", "Õ", "u", "ú", "ù", "û", "U", "Ú", "Ù", "Û"}
    
    cadeia palavra
    inteiro quant_vogais = 0, quant_consoantes = 0
    inteiro i, j

    escreva("escreva uma palavra, para que eu possa encontrar a quantidade de consoantes presentes na mesma: ")
    leia(palavra)

    inteiro quant_letras = t.numero_caracteres(palavra)

    para (i = 0; i < quant_letras; i++)
    {
      caracter letra = t.obter_caracter(palavra, i)

      para (j = 0; j < 44; j++)
      {
        se (letra == vogais[j])
        {
          quant_vogais ++
        }
      }
    }
    quant_consoantes = quant_letras - quant_vogais

    escreva("A palavra inserida tem ", quant_consoantes, " consoantes!")
  }
}
