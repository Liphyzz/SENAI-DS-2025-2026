# Exercício 3 - Verificação de Acesso
# Autor: [Seu Nome]
# Data: [Data de hoje]

# =========================
# Dados de entrada
# =========================
codigos_permitidos = {"A-201", "B-300", "D-450", "E-700"}

# =========================
# Verificar se C-105 está permitido
# =========================
codigo_verificar = "C-105"
if codigo_verificar in codigos_permitidos:
    print(f"O código {codigo_verificar} já está permitido.")
else:
    print(f"O código {codigo_verificar} não está permitido. Adicionando ao conjunto...")
    codigos_permitidos.add(codigo_verificar)

# =========================
# Verificar se A-201 está permitido e remover
# =========================
codigo_remover = "A-201"
if codigo_remover in codigos_permitidos:
    print(f"O código {codigo_remover} está permitido. Removendo do conjunto por segurança...")
    codigos_permitidos.remove(codigo_remover)
else:
    print(f"O código {codigo_remover} não está presente no conjunto.")

# =========================
# Exibir o conjunto atualizado
# =========================
print("\nConjunto atualizado de códigos permitidos:")
print(codigos_permitidos)