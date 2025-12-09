programa {
  funcao inicio() {
    
    real altura
    real largura
    real profundidade
    real aquario
    real por_peixe
    inteiro total_peixes

    escreva("Qual a altura do seu aquário em metros?: ")
    leia(altura)

    escreva("Qual a largura do seu aquário em metros?: ")
    leia(largura)

    escreva("Qual a profundidade do seu aquário em metros?: ")
    leia(profundidade)

    aquario = (altura * largura * profundidade)

    escreva("Quantos metros cúbicos de água cada peixe vai necessitar para viver bem no aquário?: ")
    leia(por_peixe)

    total_peixes = aquario / por_peixe

    escreva("\nO aquário informado suportará no máximo ", total_peixes, " peixes!")
  }
}
