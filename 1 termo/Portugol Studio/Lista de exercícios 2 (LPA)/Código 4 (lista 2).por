programa {
  funcao inicio() {

    inteiro formato
    real altura

    real raio
    real pi = 3.14159265359

    real largura
    real profundidade


    escreva("Olá, esse programa vai calcular o volume do seu tanque d'água!\nQual o formato dele?(1- Cilíndrico; 2- Paralelepípido/Cubo):\n")
    leia(formato)

    se (formato == 1)
    {
      escreva("Formato escolhido: CILÍNDRO\nQual a altura do tanque em metros?: ")
      leia(altura)
      
      escreva("Qual o raio do seu tanque em metros?: ")
      leia(raio)

      real volume = pi * raio * raio * altura

      escreva("O volume do seu tanque é ", volume, " m³")
    }
    senao se(formato == 2)
    {
      escreva("Formato escolhido: PARALELEPÍPEDO/CUBO\nQual a altura do tanque em metros?: ")
      leia(altura)

      escreva("Qual a largura do seu tanque em metros?: ")
      leia(largura)

      escreva("Qual a profundidade do seu tanque?: ")
      leia(profundidade)

      real volume = altura * largura * profundidade

      escreva("O volume do seu tanque é ", volume, "m³")
    }
    
  }
}
