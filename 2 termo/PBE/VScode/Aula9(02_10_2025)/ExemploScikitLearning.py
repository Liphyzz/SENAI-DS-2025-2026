from sklearn.linear_model import LinearRegression

# Dados de Exemplo
X = [[1],[2],[3],[4]] # variável independente
y = [2,4,6,8] # variável dependente

# Criando e treinando o modelo
modelo = LinearRegression()
modelo.fit(X,y)

# Fazendo previsão
print(modelo.predict([[5]])) # resultado esperado:~10
