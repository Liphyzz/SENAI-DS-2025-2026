#-----Bibliotecas---------
import tkinter as tk
from tkinter import messagebox
import math as mt

def calcular():
    try:
        #Entrada de dados
        base = float(entrada_base.get())
        altura = float(entrada_altura.get())
        #Processamento de dados
        area = base * altura
        perimetro = 2 * (base + altura)
        diagonal = mt.sqrt(mt.pow(base,2) + mt.pow(altura,2))
        #Saída de dados
        resultado = (
            f"Área: {area:.2f}\n"
            f"Perímetro: {perimetro:.2f}\n"
            f"Diagonal: {diagonal:.2f}"
        )
        messagebox.showinfo("Resultado", resultado)
    except ValueError:
        messagebox.showerror("Erro", "Por favor, insira valores números válidos")

def main():  
    #Criação e configuração da janela principal
    janela = tk.Tk()
    janela.title("Calculadora de retângulo")
    janela.geometry("500x500")

    #1° Rótulo - Base
    rotulo_base = tk.Label(janela,text="Base")
    rotulo_base.pack()
    #1° Campo - Base
    global entrada_base
    entrada_base = tk.Entry(janela)
    entrada_base.pack()

    #2° Rótulo - Altura
    rotulo_altura = tk.Label(janela,text="Altura")
    rotulo_altura.pack()
    #2° Campo - Altura
    global entrada_altura
    entrada_altura = tk.Entry(janela)
    entrada_altura.pack()

    #Botão para calcular
    botao_calcular = tk.Button(janela,text="Calcular",command=calcular)
    botao_calcular.pack(pady=10)

    janela.mainloop()

main()