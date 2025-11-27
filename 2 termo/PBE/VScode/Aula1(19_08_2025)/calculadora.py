import os
import keyboard
import time as t

def obter_numero(ordinal, operacao):
    while True:
        num_str = input(f"Digite o {ordinal} número: ")
        try:
            num = float(num_str)
            return num
        except ValueError:
            os.system('cls')
            print("=== CALCULADORA SIMPLES ===\n")
            print(f"Olá, {nome}! Bem-vindo(a) à calculadora simples.\n")
            print(f"-Digite a operação que deseja executar-\n[1 ou +] <- Adição\n[2 ou -] <- Subtração\n[3 ou *] <- Multiplicação\n[4 ou /] <- Divisão\nEscolha: {operacao}")
            print(f"\nEntrada inválida! Digite o {ordinal} número novamente.")

def calcular():
    global nome
    
    while True:
        os.system('cls')

        print("=== CALCULADORA SIMPLES ===\n")
        nome = input("Digite seu nome: ").strip()
        if not nome:
            nome = "Usuário"
        os.system('cls')
        print("=== CALCULADORA SIMPLES ===\n")
        print(f"Olá, {nome}! Bem-vindo(a) à calculadora simples.\n")

        operacao = input("-Digite a operação que deseja executar-\n[1 ou +] <- Adição\n[2 ou -] <- Subtração\n[3 ou *] <- Multiplicação\n[4 ou /] <- Divisão\nEscolha: ")
        operacoes = ["1", "+", "2", "-", "3", "*", "4", "/"]
        
        while operacao not in operacoes:
            os.system('cls')
            print("=== CALCULADORA SIMPLES ===\n")
            print(f"Olá, {nome}! Bem-vindo(a) à calculadora simples.\n")
            operacao = input("-Digite a operação que deseja executar-\n[1 ou +] <- Adição\n[2 ou -] <- Subtração\n[3 ou *] <- Multiplicação\n[4 ou /] <- Divisão\nErro: operação inválida!\nEscolha: ")

        print("")

        num1 = obter_numero("1°", operacao)
        num2 = obter_numero("2°", operacao)

        print("")

        match operacao:
            case "1" | "+":
                print(f"O resultado é: {num1} + {num2} = {num1 + num2}")
            case "2" | "-":
                print(f"O resultado é: {num1} - {num2} = {num1 - num2}")
            case "3" | "*":
                print(f"O resultado é: {num1} * {num2} = {num1 * num2}")
            case "4" | "/":
                if num2 == 0:
                    print("Erro: Não é possível dividir por zero.")
                else:
                    print(f"O resultado é: {num1} / {num2} = {num1 / num2}")

        print("\nPressione a tecla 'Enter' para continuar ou a tecla 'Esc' para sair...")

        # Espera pela tecla correta (Enter ou Esc)
        while True:
            event = keyboard.read_event()
            if event.name == 'enter' and event.event_type == keyboard.KEY_DOWN:
                break  # Sai do loop de espera e volta para o início do cálculo
            elif event.name == 'esc' and event.event_type == keyboard.KEY_DOWN:
                os.system('cls')
                print("Saindo da calculadora...")
                t.sleep(2)
                os.system('cls')
                print("Calculadora encerrada.")
                exit()  # Sai do programa

if __name__ == "__main__":
    calcular()