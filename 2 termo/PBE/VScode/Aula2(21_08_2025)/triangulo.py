# ---Importando Biliotecas---#
import os
import time

# Definindo a função para continuar ou não, que será utilizada no final do código
def continuar():
    while True:
        escolha = input("Deseja continuar? [(s) para sim | (n) para não]\nEscolha: ").strip().lower()
        if escolha == "s":
            return True
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

# ---Início(login)--- #
while True:
    os.system('cls') # Limpa a tela
    print("--IDENTIFICADOR DE TRIÂNGULO--\n")

    nome = str(input("Insira seu nome de usuário: ")).strip() # Perguntando o nome e retirando os espaços desnecessários
    if nome == "":
        nome = "user"

    # ---Início do programa em loop--- #
    while True:
        os.system('cls')
        print("--IDENTIFICADOR DE TRIÂNGULO--\n")
        print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
        
        l1 = l2 = base = 0.0

        while True:
            try:
                l1 = input("LADO 1 -> insira a medida do primeiro lado: ").replace("," , ".")
                l1 = float(l1)
                if l1 <= 0:
                    raise ValueError("Valor inválido! (menor ou igual a zero)")
                else:
                    os.system('cls')
                    print("--IDENTIFICADOR DE TRIÂNGULO--\n")
                    print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
                    print(f"LADO 1 -> {l1}")
                    break
            except Exception as e:
                os.system('cls')
                print("--IDENTIFICADOR DE TRIÂNGULO--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
                print(f"Erro: {e}")

        while True:
            try:
                l2 = input("LADO 2 -> insira a medida do segundo lado: ").replace("," , ".")
                l2 = float(l2)
                if l2 <= 0:
                    raise ValueError("Valor inválido! (menor ou igual a zero)")
                else:
                    os.system('cls')
                    print("--IDENTIFICADOR DE TRIÂNGULO--\n")
                    print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
                    print(f"LADO 1 -> {l1}")
                    print(f"LADO 2 -> {l2}")
                    break
            except Exception as e:
                os.system('cls')
                print("--IDENTIFICADOR DE TRIÂNGULO--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
                print(f"LADO 1 -> {l1}")
                print(f"Erro: {e}")

        while True:
            try:
                base = input("BASE -> insira a medida da base: ").replace("," , ".")
                base = float(base)
                if base <= 0:
                    raise ValueError("Valor inválido! (menor ou igual a zero)")
                else:
                    os.system('cls')
                    print("--IDENTIFICADOR DE TRIÂNGULO--\n")
                    print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
                    print(f"LADO 1 -> {l1}")
                    print(f"LADO 2 -> {l2}")
                    print(f"BASE -> {base}")
                    break
            except Exception as e:
                os.system('cls')
                print("--IDENTIFICADOR DE TRIÂNGULO--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você digita as medidas do seu triângulo e ele o desvenda! 😁\n")
                print(f"LADO 1 -> {l1}")
                print(f"LADO 2 -> {l2}")
                print(f"Erro: {e}")

        if (l1 + l2) <= base or (l1 + base) <= l2 or (l2 + base) <= l1:
            print("\nRESULTADO: Essas medidas não formam um triângulo!\n")
            if continuar():
                continue
            else:
                break
        else:
            if l1 == l2 and l1 == base:
                resultado = "equilátero"
            elif (l1 == l2 and l1 != base) or (l1 == base and l1 != l2) or (l2 == base and l2 != l1):
                resultado = "isóceles"
            else:
                resultado = "escaleno"

            print(f"\nRESULTADO: Essas medidas formam um triângulo '{resultado}'!\n")

            if continuar():
                break
            else:
                break