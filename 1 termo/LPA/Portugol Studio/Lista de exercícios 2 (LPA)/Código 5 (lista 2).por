programa {
  funcao inicio() {
    real kmL
    real precoL
    real distancia

    escreva("Insira quantos Km seu carro roda por litro de combustível: ")
    leia(kmL)

    escreva("Insira o preço desse mesmo combustível: ")
    leia(precoL)

    escreva("Insira a distância do ponto de partida até o destino dessa viagem: ")
    leia(distancia)

    real ida = (distancia / kmL) * precoL

    escreva("O trajeto só de ida custará R$", ida, " de combustível. Já a ida-e-volta custará R$", ida * 2, " de combustível.")
  }
}
