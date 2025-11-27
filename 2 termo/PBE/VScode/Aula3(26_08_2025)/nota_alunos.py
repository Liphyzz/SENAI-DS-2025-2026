import os
import time

while False:
    print("Teste")
# Loop do programa
while True:
    os.system('cls')
    # Inserir o nome do aluno
    while True:
        nome = input("Insira o seu nome: ").strip()
        if nome == "":
            nome = "user"
        nome2 = nome.split(" ").join("")
        if nome2.isalpha() and nome != "":
            break
        else:
            os.system('cls')
            print("Erro: Nome inválido. Tente novamente.")
    # Inserir a quantidade de notas
    while True:
        try:
            qtd_notas = int(input("Insira a quantidade de notas que deseja inserir: "))
            if qtd_notas <= 0:
                raise ValueError("A quantidade de notas deve ser um número inteiro positivo.")
            break
        except ValueError as e:
            os.system('cls')
            print(f"Erro: {e}")
    # Laço para a inserção de todas as notas
    notas = []
    for i in range(qtd_notas):
        while True:
            try:
                nota = float(input(f"Insira a {i + 1}° nota: "))
                if nota < 0 or nota > 10:
                    raise ValueError("A nota deve estar entre 0 e 10.")
                notas.append(nota)
                break
            except ValueError as e:
                os.system('cls')
                print(f"Erro: {e}")
    # Calculo do status e média
    media = sum(notas) / len(notas)
    try:
        if media >= 7 and media <= 10:
            status = "Aprovado"
        elif media >= 5 and media < 7:
            status = "Recuperação"
        elif media >= 0 and media < 5:
            status = "Reprovado"
        else:
            raise ValueError
    except Exception as e:
        print(f"Erro: {e}")
    # Exibição do resultado (NOME: {nome}
    #                        MÉDIA: {média}
    #                        STATUS: {status})
    print(f"\nNOME: {nome}\nMÉDIA: {media:.2f}\nSTATUS: {status}\n")
    # continuar?
    while True:
        escolha = input("Deseja continuar? [(s) para sim | (n) para não]\nEscolha: ").strip().lower()
        if escolha == "s":
            break
        elif escolha == "n":
            # Animação de carregando ↓
            os.system('cls')
            print("Saindo.")
            time.sleep(0.4)
            os.system('cls')
            print("Saindo..")
            time.sleep(0.4)
            os.system('cls')
            print("Saindo...")
            time.sleep(0.4)
            os.system('cls')
            print("Programa encerrado.")
            exit()
        else:
            os.system('cls')
            print("Entrada inválida. Digite 's' para continuar ou 'n' para sair.")