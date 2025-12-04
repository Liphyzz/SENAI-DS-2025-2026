usuario1 = {'Nome' : "Filipe", 'Idade' : "17"}
usuario2 = {'Nome' : "Eduardo", 'Idade' : "16"}
dicionario = {'Usuario 1' : usuario1, 'Usuario 2' : usuario2}

for chave in dicionario:
    print(f"{chave} -> {dicionario[chave]}")