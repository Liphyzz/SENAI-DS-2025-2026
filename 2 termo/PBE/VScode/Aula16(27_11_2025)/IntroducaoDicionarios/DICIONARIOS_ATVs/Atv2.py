usuario1 = {
            'ícone_azul': True,
            'nome': "Filipe",
            'descrição': "Odeio filhos de pilotos alemães!",
            'seguidores': 1,
            'seguindo': 1,
            'postagens': ["Doei US$50.000 ao meu amigo Bruno!", "Quem quer US$50.000? Só me seguir e adicionar como amigo!"],
            'pendente': ["Confesso, eu que sequestrei o bebê Lindbergh", "Pessoal, criei um plano incrível! Vou cometer atos ilícitos e não ser pego... Quem está comigo?"]
            }



update1 = usuario1.update({'descrição': "Sou completamente inocente, não minto.", 'site': "www.tramontina.com"})
print(f">> Alterações no perfil: {update1}\n")

if usuario1.get('íconeAzul') == True:
    print(">> Este usuário é verificado!\n")
else:
    print(">> Este usuário não é verificado!\n")

pop1 = usuario1['pendente'].pop(0)
print(f">> Pendencia deletada: {pop1}\n")

print("\n===== DashBoard do Usuário =====")
for chave, valor in usuario1.items():
    print(f"{chave.upper()}: {valor}")