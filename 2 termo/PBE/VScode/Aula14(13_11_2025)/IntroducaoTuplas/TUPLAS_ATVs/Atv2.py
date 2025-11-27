# --Importação de Bibliotecas--
import os

os.system('cls') # Função para limpar o "lixo" do terminal antes de começar

# --Atribuição de Variáveis--
votos = (101, 205, 101, 300, 205, 101, 400)

# --Saída de Dados
print(votos)
print(f"O número 101 aparece {votos.count(101)} vezes na tupla")
print(f"O numero 300 aparece pela primeira vez no índice {votos.index(300)} da tupla")
votos.append(500)