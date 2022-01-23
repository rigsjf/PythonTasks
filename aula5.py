# numeros = [1, 2, 3, 4, 5]
# print(numeros)


# letras = ['a', 'b', 'c']
# indice = letras.index('b')
# letras[indice] = 'x'

# print(letras)

# numeros = [10, 20, 30, 40, 50]
# for contador in range(len(numeros)):
#     print(numeros[contador])

# nomes = ['paulo', 'matheus']

# for x in nomes:
#     print(x)

#Calcular a media de N provas
# N = int(input('Quantas notas você deseja digitar?'))
# notas = []

# for i in range(N):
#     nota = float(input(f'{i+1}. Digite a nota: '))
#     notas.append(nota)

# media = sum(notas) / len(notas)
# print(f'A média das notas é {media:.2f}')
# print(f'As notas digitadas foram: {notas}')

N = int (input('Quantas notas você deseja digitar? '))
soma = 0
contador = 0
while contador < N:
    nota = int (input(f'{contador}. Digite uma nota: '))
    soma = soma + nota
    contador = contador + 1
media = soma / N
print(f'A média das notas é {media:.2f}.')