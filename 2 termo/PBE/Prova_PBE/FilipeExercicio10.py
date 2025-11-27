import os

os.system('cls')

print("=====================")
print("CALCULADORA DE MÉDIAS")
print("=====================")

while True:
    try:
        continuar = str(input("\nVocê deseja continuar? (s/n)\nR: ")).lower()
        if continuar == "n":
            os.system('cls')
            print("Programa encerrado.")
            quit()
        elif continuar == "s":
            os.system('cls')
            print("=====================")
            print("CALCULADORA DE MÉDIAS")
            print("=====================\n")
            
            nome = input("Nome OU código do aluno: ")
            print("")
            n1 = float(input("insira a nota do primeiro bimestre: "))
            n2 = float(input("insira a nota do segundo bimestre: "))
            n3 = float(input("insira a nota do terceiro bimestre: "))
            n4 = float(input("insira a nota do quarto bimestre: "))

            media = (n1+n2+n3+n4)/4.0

            print(f"Média: {media :.2f}\n")

            if media >= 7:
                resultado = "está aprovado(a)!"
            elif media >= 5 and media < 7:
                resultado = "ficou de recuperação!"
            elif media < 5:
                resultado = "está reprovado(a)!"

            print(nome, resultado)
    except Exception as e:
        print(f"Erro: {e}")