# def soma_dois(num):
#     soma_dois = num + 2
#     return soma_dois

# x = soma_dois(42)
# print(x)

import random

def media_aleatorios(n):
    nums_aleatorios = []
    indice = 0
    while indice < n:
        numero_sorteado = random.randint(0, 100)
        nums_aleatorios.append(numero_sorteado)
        indice = indice + 1
    soma = sum(nums_aleatorios)
    media = soma/len(nums_aleatorios)
    return media

x = 3
resultado = media_aleatorios(x)
print(resultado)

#Faça uma função que recebe um número e imprime seu dobro.

def dobro(n):
    dobro = n * 2
    return dobro

x = 3
resultado = dobro(x)
print(resultado)

# Faça uma função que recebe o valor do raio de um círculo e retorna o valor do comprimento de sua circunferência: C = 2*pi*r.
def cumprimento_circunferencia(n):
    pi = 3.14159265359
    cumprimento = 2 * pi * n
    return cumprimento

x = 10
resultado = cumprimento_circunferencia(x)
print(resultado)