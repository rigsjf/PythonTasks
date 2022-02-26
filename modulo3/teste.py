nome = input('Digite o seu nome: ')
with open('teste_texto.txt', 'w') as arquivo:
    arquivo.write(nome)

print(nome)