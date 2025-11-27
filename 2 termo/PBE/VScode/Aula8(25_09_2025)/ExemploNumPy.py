import numpy as np

        #1. Criando array NumPy
    #Cria um array unidimensional (vetor) e partir de uma lista Python
vetor = np.array([1, 2, 3, 4, 5])
print("Vetor original")
print(vetor)
    #Cria um array bidimensional (matriz)
matriz_a = np.array([[1,2,3],
                     [3,4,5],
                     [5,6,7]])
print("\nMatriz A")
print(matriz_a)

matriz_b = np.array([[5,6,7],
                     [7,8,9],
                     [9,10,11]])
print("\nMatriz B")
print(matriz_b)

        #2. Operação matemática em todos os elementos
    #Eleva cada elemento do vetor ao quadrado.
    #Note que a operação é aplicada a cada item de forma eficiente
vetor_ao_quadrado = vetor ** 2
print("\nCada elemento do vetor elevado ao quadrado.")
print(vetor_ao_quadrado)

        #3. Multiplicação de matrizes
    #Realiza a multiplicação de matrizes de forma eficiente usando o np.dot
    #O resultado é uma nova matriz
matriz_resultado = np.dot(matriz_a, matriz_b)
print("\nResultado da multiplicação de matriz A por B.")
print(matriz_resultado)