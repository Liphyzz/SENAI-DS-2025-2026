import random
import keyboard
import os
import sys

while True:
    os.system('cls')
    print("=======================")
    print(" ROLETA SUPER PRO PLUS ")
    print("=======================")

    itens = input("Escreva todos os nomes (separados por vírgulas): ").replace(" ", "").split(",")

    random.shuffle(itens)

    sortear = input("Clique [Enter] para sortear ou [Esc] para sair")
    while True:
        # Espera por um evento de tecla
        evento = keyboard.read_event()

        # Verifica se foi um evento de pressionar tecla
        if evento.event_type == keyboard.KEY_DOWN:
            if evento.name == 'enter':
                print("Reiniciando o programa...")
            elif evento.name == 'esc':
                print("Saindo do programa...")
                sys.exit()

