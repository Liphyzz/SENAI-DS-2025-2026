programa { 

  inclua biblioteca Util --> u 

  inteiro sorteio, afirmacao 

  cadeia decisao 

  

    funcao inicio() {

      inteiro sorteio, afirmacao, num
      cadeia decisao, resultado

      sorteio = u.sorteia(1, 100)

  
      enquanto(decisao != "Par" e decisao != "par" e decisao !="PAR" e decisao != "Ímpar" e decisao != "ímpar" e decisao != "ÍMPAR")
      {
        escreva("Vamos competir! escolha se você quer Par ou Ímpar!\nR: ")
        leia(decisao)

        se(decisao != "Par" e decisao != "par" e decisao !="PAR" e decisao != "Ímpar" e decisao != "ímpar" e decisao != "ÍMPAR")
        {
          escreva("Por favor, digite corretamente!\n") 
        }
      }

  
    escreva("\n3...\n") 

    u.aguarde(1000) 

    escreva("2...\n") 

    u.aguarde(1000) 

    escreva("1...\n") 

    u.aguarde(1000)

    escreva("JÁ!\nMOSTREM SEUS NÚMEROS!!!\n\n")

    escreva("Seu número (1 à 100): ")
    leia(num)
    
    u.aguarde(800)
    escreva("Meu número: ", sorteio)

    u.aguarde(800)

    afirmacao = (sorteio + num) % 2
    se (afirmacao == 0)
    {
      resultado = "PAR!"
    }
    
    senao
    {
      resultado = "ÍMPAR!"
    }

    escreva("\n\n", num, " + ", sorteio, " = ", (num + sorteio), " --> ", resultado, "\n\n")

    u.aguarde(800)

  
    se (decisao == "Par" ou decisao == "par" ou decisao == "PAR")
    { 
      se(afirmacao == 0)
      { 
        escreva("Parece que você ganhou, parabéns pela vitória!")
      } 

      senao
      {
        escreva("Eu ganhei!!! Eu ganhei!!!")
      }
    }

    senao se (decisao == "Ímpar" ou decisao == "ímpar" ou decisao == "ÍMPAR")
    { 
      se(afirmacao == 0)
      { 
        escreva("Eu ganhei!!! Eu ganhei!!!") 
      } 

      senao
      {
        escreva("Parece que você ganhou, parabéns pela vitória!")
      }
    }
  }
}