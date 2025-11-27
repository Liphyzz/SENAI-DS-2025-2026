programa {
  funcao inicio()
  {
    real a, b, c, d

    escreva ("Insira a primeira nota (valores aceitos de 0 à 10): ")
		leia (a)
    se (a < 0.00 ou a > 10.00)
    {
      faca
      {
        escreva ("Nota inválida, insira novamente a primeira nota (valores aceitos de 0 à 10): ")
        leia (a)
      }
		  enquanto (a < 0.00 ou a > 10.00)
    }

    escreva ("Insira a segunda nota (valores aceitos de 0 à 10): ")
		leia (b)
    se (b < 0.00 ou b > 10.00)
    {
      faca
      {
        escreva ("Nota inválida, insira novamente a segunda nota (valores aceitos de 0 à 10): ")
        leia (b)
      }
		  enquanto (b < 0.00 ou b > 10.00)
    }

    escreva ("Insira a terceira nota (valores aceitos de 0 à 10): ")
		leia (c)
    se (c < 0.00 ou c > 10.00)
    {
      faca
      {
        escreva ("Nota inválida, insira novamente a terceira nota (valores aceitos de 0 à 10): ")
        leia (c)
      }
		  enquanto (c < 0.00 ou c > 10.00)
    }

    escreva ("Insira a quarta nota (valores aceitos de 0 à 10): ")
		leia (d)
    se (d < 0.00 ou d > 10.00)
    {
      faca
      {
        escreva ("Nota inválida, insira novamente a quarta nota (valores aceitos de 0 à 10): ")
        leia (d)
      }
		  enquanto (d < 0.00 ou d > 10.00)
    }

    real media = (a+b+c+d)/4

    se (media >= 7.00)
    {
      escreva ("Você foi Aprovado!\n")
    }
    senao se (media >= 5.00 e media <= 6.99)
    {
      escreva ("Você ficou de Recuperação!\n")
    }
    senao
    {
      escreva ("Você foi Reprovado!\n")
    }
  }
}
