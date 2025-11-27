# ---Importando Biliotecas---#
import os
import time
import math
import tkinter as tk
from tkinter import ttk

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
os.system('cls') # Limpa a tela
print("--CALCULADORA DE RETÂNGULO--\n")

nome = str(input("Insira seu nome de usuário: ")).strip() # Perguntando o nome e retirando os espaços desnecessários
if nome == "":
    nome = "user"

# ---Início do programa em loop--- #
while True:
    os.system('cls')
    print("--CALCULADORA DE RETÂNGULO--\n")
    print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você insere a medida dos lados de um retângulo e encontra sua área, perímetro e diagonal! 😁\n")
    
    altura = base = 0.0 # Zerando as variáveis base e altura para não gerar problemas

    print("-----------------------------------------------")
    print("                    MEDIDAS                    ")
    print("-----------------------------------------------")

    # Inserindo a altura e verificando se há irregularidades
    while True:
        try:
            altura = input("Altura -> insira a altura do retângulo (cm): ").replace("," , ".") # Troca todas as vírgulas por pontos
            altura = float(altura)
            if altura <= 0:
                raise ValueError("Valor inválido! (menor ou igual a zero)")
            else:
                os.system('cls')
                print("--CALCULADORA DE RETÂNGULO--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você insere a medida dos lados de um retângulo e encontra sua área, perímetro e diagonal! 😁\n")
                print("-----------------------------------------------")
                print("                    MEDIDAS                    ")
                print("-----------------------------------------------")
                print(f"Altura -> {altura}")
                break # Sai do while
        except Exception as e:
            os.system('cls')
            print("--CALCULADORA DE RETÂNGULO--\n")
            print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você insere a medida dos lados de um retângulo e encontra sua área, perímetro e diagonal! 😁\n")
            print("-----------------------------------------------")
            print("                    MEDIDAS                    ")
            print("-----------------------------------------------")
            print(f"Erro: {e}")

    # Inserindo a base e verificando se há irregularidades
    while True:
        try:
            base = input("Base -> insira a medida da base (cm): ").replace("," , ".") # Troca todas as vírgulas por pontos
            base = float(base)
            if base <= 0:
                raise ValueError("Valor inválido! (menor ou igual a zero)")
            else:
                os.system('cls')
                print("--CALCULADORA DE RETÂNGULO--\n")
                print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você insere a medida dos lados de um retângulo e encontra sua área, perímetro e diagonal! 😁\n")
                print("-----------------------------------------------")
                print("                    MEDIDAS                    ")
                print("-----------------------------------------------")
                print(f"Altura -> {altura}")
                print(f"Base -> {base}")
                break
        except Exception as e:
            os.system('cls')
            print("--CALCULADORA DE RETÂNGULO--\n")
            print(f"Olá '{nome}', bem-vindo ao programa fantástico, onde você insere a medida dos lados de um retângulo e encontra sua área, perímetro e diagonal! 😁\n")
            print("-----------------------------------------------")
            print("                    MEDIDAS                    ")
            print("-----------------------------------------------")
            print(f"Altura -> {altura}")
            print(f"Erro: {e}")

    area = altura * base
    perimetro = altura*2 + base*2
    diagonal = math.sqrt((altura*altura) + (base*base))
    print("-----------------------------------------------\n")
    print("----------------")
    print("   RESULTADOS   ")
    print("----------------")
    print(f"Área: {area :.2f}cm²\nPerímetro: {perimetro :.2f}\nDiagonal: {diagonal :.2f}")
    print("----------------")

    if not continuar():
        break