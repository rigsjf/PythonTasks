# Faça um programa que peça ao usuário um número e imprima todos os números de um até o número dado.
# Exemplo:
# digite: 5
# imprime: 1 2 3 4 5


# numero = int (input('Digite um número maior que zero: '))
# while numero <= 0:
#      print('Entrada inválida.')
#      numero = int (input('Digite um número maior que zero: '))
# for N in range(1, numero+1):
#      print(N)

#Peça ao usuário para digitar um número e imprima o fatorial de n.
# numero = int (input('Digite um número maior que zero: '))
# fatorial = 1
# while numero <= 0:
#      print('Entrada inválida.')
#      numero = int (input('Digite um número maior que zero: '))
# for N in range(numero, 0, -1):
#      fatorial = fatorial * N
# print(f'O fatorial de numero é {fatorial}.')

#Peça ao usuário para digitar um número N e some todos os números de 1 a N utilizando o laço de repetição while.
numero = int (input('Digite um número maior que zero: '))
soma = 0
while numero <= 0:
     print('Entrada inválida.')
     numero = int (input('Digite um número maior que zero: '))
for N in range(1, numero+1):
     soma = soma + N
print(f'A soma de todos os número s de 1 até {N} é {soma}.')
