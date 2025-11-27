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
    print("--TABUADA--\n")

    # ERRO DAQUI...
    while True:
        try:
            nome = str(input("Insira seu nome de usuário: ")).strip() # Perguntando o nome e retirando os espaços desnecessários
            if nome == "":
                nome = "user"
            
            b = False
            for i in nome:
                if i == " ":
                    b = True
            
            match b:
                case False:
                    if nome.isalpha == False:
                        raise ValueError("Só são permitidos caracteres")
                case True:
                    for i in nome.split(" "):
                        if i.isalpha == False:
                            raise ValueError("Só são permitidos caracteres")
            
            break
        except Exception as e:
            os.system('cls')
            print(f"Erro: {e}")
    # ATÉ AQUI

    # ---Início do programa em loop--- #
    while True:
        os.system('cls')
        print("--TABUADA--\n")
        print(f"Olá '{nome}', bem-vindo ao programa fantástico que gera a sua tabuada requerida! 😁\n")
        
        n1 = n2 = 0.0

        while True:
            try:
                n1 = input("NUM -> digite o número do qual quer uma tabuada: ").replace("," , ".").strip()
                n1 = float(n1)
                if n1 < 0:
                    raise ValueError("Valor inválido! (menor do que zero)")
                else:
                    os.system('cls')
                    print("--TABUADA--\n")
                    print(f"Olá '{nome}', bem-vindo ao programa fantástico que gera a sua tabuada requerida! 😁\n")
                    print(f"NUM -> {n1}")
                    break
            except Exception as e:
                os.system('cls')
                print("--TABUADA--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico que gera a sua tabuada requerida! 😁\n")
                print(f"Erro: {e}")

        while True:
            try:
                n2 = input("LIMITE -> insira até qual número ele deve multiplicar: ").strip()
                n2 = int(n2)
                if n2 < 0:
                    raise ValueError("Valor inválido! (menor do que zero)")
                else:
                    os.system('cls')
                    print("--TABUADA--\n")
                    print(f"Olá '{nome}', bem-vindo ao programa fantástico que gera a sua tabuada requerida! 😁\n")
                    print(f"NUM -> {n1}")
                    print(f"LIMITE -> {n2}")
                    break
            except Exception as e:
                os.system('cls')
                print("--TABUADA--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico que gera a sua tabuada requerida! 😁\n")
                print(f"NUM -> {n1}")
                print(f"Erro: {e}")

        
        for i in range(1, n2 + 1):
            print(f"{n1} x {i} = {n1 * i}")

        if continuar():
            break
        else:
            break