# Trabalho 2 - Desafio de Palavras Comuns (Interseção)
# Autor: [Seu Nome]
# Data: [Data de hoje]

# =========================
# Dados de entrada
# =========================
set_a_substantivos = {"casa", "azul", "carro", "bonito", "cidade", "rápido"}
set_b_adjetivos = {"grande", "rápido", "azul", "feliz", "carro", "pequeno"}

# =========================
# Exibir os conjuntos originais
# =========================
print("Set A - Substantivos:")
print(set_a_substantivos)
print("\nSet B - Adjetivos:")
print(set_b_adjetivos)

# =========================
# Calcular a interseção
# =========================
palavras_comuns = set_a_substantivos.intersection(set_b_adjetivos)

# =========================
# Exibir o resultado
# =========================
print("\nPalavras que aparecem em ambos os conjuntos (interseção):")
print(palavras_comuns)

# =========================
# Explicação
# =========================
print("\nExplicação:")
print("A interseção retorna apenas os elementos que estão presentes nos dois conjuntos.")
print("No nosso caso, as palavras comuns entre substantivos e adjetivos são:", palavras_comuns)