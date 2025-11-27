programa {
  funcao inicio() {

    cadeia time1, time2
    inteiro gols1, gols2

    escreva("Digite o nome do primeiro time: ")
    leia(time1)
    escreva("Digite a quantidade de gols que o mesmo marcou: ")
    leia(gols1)

    escreva("Digite o nome do segundo time: ")
    leia(time2)
    escreva("Digite a quantidade de gols que o mesmo marcou: ")
    leia(gols2)

    se (gols1 > gols2)
    {
      escreva("O ", time1, " levou a vitória pra casa!")
    }
    senao se (gols1 < gols2)
    {
      escreva("O ", time2, " levou a vitória pra casa!")
    }
    senao
    {
      escreva("O resultado da partida foi EMPATE!")
    }
  }
}
