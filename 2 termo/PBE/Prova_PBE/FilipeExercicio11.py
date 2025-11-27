import random
import os

os.system('cls')
print("==================")
print("JOGO DA ADVINHAÇÃO")
print("==================")

print("\nNesse jogo eu irei sortear um número de  à 100, e você deve tentar advinhá-lo!")

while True:
    try:
        continuar = str(input("Você deseja continuar? (s/n)\nR: ")).lower()
        if continuar == "n":
            os.system('cls')
            print("Programa encerrado.")
            quit()
        elif continuar == "s":
            os.system('cls')
            print("==================")
            print("JOGO DA ADVINHAÇÃO")
            print("==================")

            print("\nNesse jogo eu irei sortear um número de um à 100, e você deve tentar advinhá-lo!")
            print("\nO jogo começou, tente advinhar!")

            numsorteado = random.randrange(1, 100)
            chances = 0
            while True:
                if chances >= 10:
                    print("Chances esgotadas! (10)")
                    break
                chute = int(input("\nChute: "))
                chances += 1

                if chute == numsorteado:
                    print("UAL, Parabéns! 🎉")
                    print(f"Você acertou em {chances} chance(s)")
                    break
                elif chute > numsorteado:
                    print("Errouuu, Muito alto! Tente um número menor...")
                else:
                    print("Errouuu, Muito baixo! Tente um número maior...")
        
    except Exception as e:
        print(f"Erro: {e}")