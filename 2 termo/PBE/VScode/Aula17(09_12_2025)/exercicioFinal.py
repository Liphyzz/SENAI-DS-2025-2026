# EXERCÍCIO FINAL ESTRUTURA DE DADOS -> PEDIDO, COMPRA E CLIENTE #

# --Importação de Bibliotecas
import os

os.system('cls') # limpa a tela

# --Entradas de Dados--

itens_comprados = ["camiseta", "caneca", "chaveiro", "caneca", "meia"]
detalhes_cliente = ("maria.silva@gmail.com", "Rua das Flores, 123", "SP")
precos_produtos = {"camiseta": 35.00, "caneca": 25.00, "chaveiro": 10.00, "meia": 15.00}

# Printando a lista, a Tupla e o Dicionário
print(f"Itens comprados: {itens_comprados}\n")
print(f"Detalhes do cliente: {detalhes_cliente}\n")
print(f"Precos de cada produto: {precos_produtos}\n")


# --Processamento de Dados--

# Tirando itens repetidos da lista
produtos_unicos = set(itens_comprados)
# -Saída de Dados-
print(f"produtos comprados (sem repetição): {produtos_unicos}\n")

# Calculando o valor total do pedido
valor_total_pedido = 0
for i in itens_comprados:
    valor_total_pedido += precos_produtos[i]
# -Saída de Dados-
print(f"valor total do pedido: {valor_total_pedido}\n")

# Pedido Final
pedido_final = []
for chave in precos_produtos:
    tupla = (chave, precos_produtos[chave])
    pedido_final.append(tupla)
# -Saída de Dados-
print(f"Pedido final: {pedido_final}\n")

# Nome do cliente
lista_nome_cliente = detalhes_cliente[0].split("@")
nome_cliente = lista_nome_cliente[0].replace(".", " ")
# -Saída de Dados-
print(f"Nome do cliente: {nome_cliente.title()}")