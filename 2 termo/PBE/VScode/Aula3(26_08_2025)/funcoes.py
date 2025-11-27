def calcular_status(n):
    try:
        if n >= 7 and n <= 10:
            resultado = "Aprovado"
        elif n >= 5 and n < 7:
            resultado = "Recuperação"
        elif n >= 0 and n < 5:
            resultado = "Reprovado"
        else:
            raise ValueError
    except Exception as e:
        print(f"Erro: {e}")

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