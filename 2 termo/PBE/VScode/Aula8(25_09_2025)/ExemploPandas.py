import pandas as pd

        #1. Criandoum DataFrame a partir de um dicionário
dados = {
    'nome': ['Alice','Bob','Carlos','Diana','Eva'],
    'idade': [25,30,35,22,28],
    'cidade': ['São Paulo','Rio de Janeiro','Belo Horizonte','São Paulo','Rio de Janeiro']
}

    #Cria o DataFrame
df = pd.DataFrame(dados)

print("-- DataFrame original --")
print(df)

        #2. Selecionar uma coluna
print("\n-- Apenas a coluna 'nome' --")

    # selecionar uma única coluna retorna uma Series (tipo de dado do Pandas)
nomes = df['nome']
print(nomes)

        #3. Filtrando dados por uma condição
print("\nPessoas com mais de 25 anos")

    #Cria uma condição (uma Series de True/False) e a usa para filtrar o DataFrame
df_filtrado = df[df['idade'] > 25]
print(df_filtrado)

        #4. Realizando um cálculo simples
    #Calcula a média da idade entre todas as pessoas
media_idade = df['idade'].mean()
print(f"\n-- Média de idade --")
print(f"A média de idade das pessoas é de: {media_idade:.2f} anos de idade")