#-----Bibliotecas---------
import tkinter as tk
from tkinter import messagebox
import math as mt

def calcular():
    try:
        #Entrada de dados
        base = float(entrada_base.get())
        l1 = float(entrada_l1.get())
        l2 = float(entrada_l2.get())
        #Processamento de dados
        if (l1 + l2) <= base or (l1 + base) <= l2 or (l2 + base) <= l1:
            messagebox.showerror("\nRESULTADO: Essas medidas não formam um triângulo!\n")
        else:
            if l1 == l2 and l1 == base:
                resultado = "Forma um triângulo equilátero"
            elif (l1 == l2 and l1 != base) or (l1 == base and l1 != l2) or (l2 == base and l2 != l1):
                resultado = "Forma um triângulo isóceles"
            else:
                resultado = "Forma um triângulo escaleno"
        #Saída de dados
        messagebox.showinfo("Resultado", resultado)
    except ValueError:
        messagebox.showerror("Erro", "Por favor, insira valores números válidos")

def main():  
    #Criação e configuração da janela principal
    janela = tk.Tk()
    janela.title("Calculadora de triângulo")
    janela.geometry("500x500")

    #1° Rótulo - Base
    rotulo_base = tk.Label(janela,text="Base")
    rotulo_base.pack()
    #1° Campo - Base
    global entrada_base
    entrada_base = tk.Entry(janela)
    entrada_base.pack()

    #2° Rótulo - Lado 1
    rotulo_l1 = tk.Label(janela,text="Lado 1")
    rotulo_l1.pack()

    #2° Campo - Lado 1
    global entrada_l1
    entrada_l1 = tk.Entry(janela)
    entrada_l1.pack()

    #3° Rótulo - Lado 2
    rotulo_l2 = tk.Label(janela,text="Lado 2")
    rotulo_l2.pack()

    #3° Campo - Lado 2
    global entrada_l2
    entrada_l2 = tk.Entry(janela)
    entrada_l2.pack()

    #Botão para calcular
    botao_calcular = tk.Button(janela,text="Calcular",command=calcular)
    botao_calcular.pack(pady=10)

    janela.mainloop()

main()