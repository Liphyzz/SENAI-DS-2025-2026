# --Importação das Bibliotecas--
import os

os.system('cls') # Para limpar o "lixo" do terminal antes de começar

# --Definição de variáveis--
dados_planeta = ("Marte", 3389.5, 3.93) # (Tupla)

# --Saída de Dados--
print(dados_planeta)
print(f"Nome do planeta: {dados_planeta[0]}")
print(f"Densidade do planeta: {dados_planeta[2]}")
print(f"Último item da tupla: {dados_planeta[-1]}")