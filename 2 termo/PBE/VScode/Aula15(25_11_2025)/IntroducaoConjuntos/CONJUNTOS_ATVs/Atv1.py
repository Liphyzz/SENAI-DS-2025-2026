# Dados de entrada
notas_turma = [7.5, 8.0, 6.5, 9.0, 7.5, 8.0, 5.0, 9.0, 10.0, 6.5]

# Remover duplicatas usando set
notas_unicas = set(notas_turma)

# Contar quantas notas únicas existem
quantidade_unicas = len(notas_unicas)

# Exibir resultados
print("Notas únicas:", notas_unicas)
print("Quantidade de notas únicas:", quantidade_unicas)