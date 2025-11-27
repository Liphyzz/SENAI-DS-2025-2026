import torch
import torch.nn as nn
import torch.optim as optim


#1. Dados de entrada e saida (queremos aprender a relaçao y=2x + 1)
X = torch.tensor([[1.0],[2.0], [3.0], [14.0]])
y = torch.tensor([[3.0],[5.0],[7.0],[19.0]])


#2. Definir o modelo (camada linear simples: y=w*x+b)
modelo = nn.Linear(in_features=1, out_features=1)


#3. Função de perda (erro quadrético médio)
criterio = nn.MSELoss()


#4.Otimizador (Gradiente Descendente usando SGD)
otimizador = optim.SGD(modelo.parameters(), lr = 0.01)

#5. Treinamento
for epoca in range(500):
    y_pred = modelo(X) # forward: previsão
    perda = criterio(y_pred, y) # calcular perda
    otimizador.zero_grad() # Zerar gradientes acumulados
    perda.backward() # backward: calcular gradientes
    otimizador.step() # atualizar pesos

    # Mostrar progresso a cada 50 épocas
    if epoca % 50 == 0:
        print(f"Época {epoca}, Perda: {perda.item():.4f}")

#6. Testando previsão
entrada = torch.tensor([[5.0]])
saida = modelo(entrada)
print(f"Previsão para x=5: {saida.item():.2f}")