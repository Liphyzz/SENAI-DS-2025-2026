import random

	    # 1. Definir a lista de nomes que você quer usar
nomes_lista = input("Escreva todos os nomes para o sorteio (separados por vírgulas): ").replace(" ", "").split(",")

	    # 2. Verificar se a lista não está vazia para evitar erros
if nomes_lista:

    print("A lista de participantes é:", nomes_lista)
    print("---")

    random.shuffle(nomes_lista)
    print(f"O nome escolhido aleatoriamente foi: {nomes_lista[0]}")

else:
    print("A lista de nomes está vazia. Por favor, adicione nomes para poder sortear.")