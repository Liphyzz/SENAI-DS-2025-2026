programa {
  inclua biblioteca Util
  funcao inicio() {
   
    inteiro i = 0
    cadeia nomeAluno = ""
    cadeia alunos[34]

    alunos[0] = "Amadeus"
    alunos[2] = "Cordelius"
    alunos[33] = "Flor"

    escreva("Digite o nome do aluno: ")
    leia(nomeAluno)

    enquanto (i < Util.numero_elementos(alunos)){
      se (alunos[i] == nomeAluno){
        escreva("Você pediu o nome " , nomeAluno, " e o retorno foi ", i )
      }
      i++
      }
    }
    }
  
