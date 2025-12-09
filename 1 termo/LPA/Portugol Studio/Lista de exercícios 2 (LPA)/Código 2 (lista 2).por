programa {

  inclua biblioteca Calendario --> c

  inteiro hora = c.hora_atual()
  cadeia nome

  funcao inicio()
  {
    escreva("Digite seu nome: ")
    leia(nome)

    se (hora >= 4 e hora <= 11)
    {
      escreva ("Bom dia, ", nome, "!")
    }
    senao se (hora >= 12 e hora <= 19)
    {
      escreva ("Boa Tarde, ", nome, "!")
    }
    senao
    {
      escreva("Boa Noite, ", nome, "!")
    }
  }
}
