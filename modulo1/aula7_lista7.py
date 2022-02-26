# Faça uma função que recebe um nome e um horário e imprime “Bom dia, [nome]”, caso seja antes de 12h,
#  “Boa Tarde, [nome]”, caso seja entre 12h e 18h e “Boa noite, [nome]” se for após às 18h.

import datetime

def saudacao(nome, horario):
    if horario >= '00:00:00' and horario < '12:00:00':
        print(f'Bom dia, {nome}!')
    
    elif horario >= '12:00:00' and horario < '18:00:00':
        print(f'Boa tarde {nome}!')
    
    else:
        print(f'Boa noite {nome}!')
    
nome = input('Digite o seu nome: ')
horario = datetime.datetime.now().strftime("%X")
saudacao(nome, horario)


# Faça uma função que sorteia 10 números aleatórios entre 0 e 100 e retorna o maior entre eles.

import random
def maior_aleatorios():
    nums_aleatorios = []
    indice = 0
    while indice < 10:
        numero_sorteado = random.randint(0, 100)
        nums_aleatorios.append(numero_sorteado)
        indice = indice + 1
    maior = max(nums_aleatorios)
    return maior
resultado = maior_aleatorios()
print(resultado)

# Faça uma função que receba duas listas e retorne o produto item a item dessas listas.

# Exemplo: Se a função receber as listas [1,4,3] e [3,5,1], então a função deve retornar [1x3, 4x5, 3x1] = [3, 20, 3].
def produto_listas(primeira, segunda):
    if len(primeira) != len(segunda):
        print('Falha: listas com tamanhos diferentes!')
    else:
        produto = []
        for i in range(len(primeira)):
            multiplicacao = primeira[i] * segunda[i]
            produto.append(multiplicacao)
            i = i + 1
    return produto

primeira = [1, 4, 3]
segunda = [3, 5, 1]
nova_lista = produto_listas(primeira, segunda)
print(nova_lista)