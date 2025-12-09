programa {

  inclua biblioteca Texto --> t
  inclua biblioteca Matematica --> m
  funcao inicio() {

    cadeia num
    inteiro i, num_dec = 0
 
    escreva("insira um número binário: ")
    leia(num)

    inteiro comprimento = t.numero_caracteres(num)

    para (i = comprimento - 1; i >= 0; i--)
    {
      caracter algarismo = t.obter_caracter(num, i)
      se (algarismo == "0" ou algarismo == " ")
      {

      }
      senao
      {
        num_dec += m.potencia(2, (comprimento - i - 1))
      }
    }
    escreva(num_dec)
  }
}
