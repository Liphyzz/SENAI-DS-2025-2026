programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    
    inteiro sorteio, chute, diferenca, n_chutes = 0
    
    sorteio = u.sorteia (1, 100)

    escreva ("Adivinhe o número aleatório sorteado de 1 à 100:  ")
    leia (chute) 

 
      enquanto (chute != sorteio)
      {  

        diferenca = sorteio - chute

        se (diferenca > 0)
        {

          se(diferenca <= 5)
          { 
            escreva("Quase lá! Tente um número um pouquinho maior...\n") 
          }

          senao se(diferenca <= 15)
          {
            escreva("Esquentando... Tente um número um pouco maior...")
          }

          senao se (diferenca <= 25 )
          {
            escreva("Não tão perto, não tão longe. Tente um número maior...\n") 
          }

          senao
          {
            escreva("Poxa! Está longe. Tente um número mais alto...") 
          }
        }

        senao se (diferenca < 0)
        {

          diferenca = diferenca * (-1)

          se(diferenca <= 5)
          { 
            escreva("Quase lá! Tente um número um pouquinho menor...\n") 
          }
          senao se(diferenca <= 15)
          {
            escreva("Esquentando... Tente um número um pouco menor...")
          }

          senao se (diferenca <= 25 )
          {
            escreva("Não tão perto, não tão longe. Tente um número menor...\n") 
          }

          senao
          {
            escreva("Poxa! Está longe. Tente um número mais baixo...") 
          }
        }

          escreva("\nNova tentativa: ") 

          n_chutes++ 

          leia(chute)
      
      } 

        escreva("\nParabéns, Você adivinhou o número soteado!\nNº de tentativas: ", (n_chutes + 1)) 

  } 
} 