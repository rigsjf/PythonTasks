# Faça um programa que peça para o usuário digitar um número n e imprima uma lista com todos os números de 0 a n-1.
# Exemplo: se o usuário digitar 5, o programa deve imprimir [0, 1, 2, 3, 4]

# N = int(input("Digite um número: "))
# numeros = []
# for contador in range(N):
#     numeros.append(contador)
# print(numeros)

#Faça um programa que olhe todos os itens de uma lista e diga quantos deles são pares.
# numeros = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
# pares = 0
# for i in range(len(numeros)):
#     if numeros[i] % 2 == 0:
#         pares = pares + 1

# print(f'{pares} números da lista são pares!')

#programa que sorteie 10 numeros entre 0 e 100
import random

numeros = []
for i in range(10):
    numeros.append(random.randint(0, 100))
print(numeros)
print(f'a. O maior número sorteado é {max(numeros)}')
print(f'b. O menor número sorteado é {min(numeros)}')
print(f'c. A média dos números é {sum(numeros) / len(numeros)}')
print(f'c. A soma dos números é {sum(numeros)}')