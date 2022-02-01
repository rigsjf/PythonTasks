
# Desafio! - Calcule a soma de até mil termos da série 1 + 1/2 + 1/4 + 1/8 + 1/16 + ...
# Dica: Use três variáveis:
# • um contador, que começa em zero;
# • uma variável para a soma de todos os termos, que também começa em zero;
# • uma variável para cada termo, que começa em 1 e a cada loop é dividida por 2.
# # A repetição da soma de mil termos pode ser feita com a função while contador < 1000.

contador = 0
soma = 0
cada_termo = 1

def divide_por_dois(n):
    n = n / 2
    return n

while contador < 1000:
    soma = soma + cada_termo
    cada_termo = divide_por_dois(cada_termo)
    contador = contador + 1

print (soma)

# Super Desafio! - Calcule a soma de mil termos dos inversos dos fatoriais: 1/(1!) + 1/(2!) + 1/(3!) + 1/(4!) + ...
# Dica: Assim como no exercício anterior use três variáveis: um contador; uma variável para a soma; e uma variável para os termos. Lembre-se de que 4! = 4*3*2*1 que também é igual a 4*3!.

def fatorial(n):
    if n == 0 or n == 1: # fatorial de 0 ou 1 são igualmente 1, ganho de uma iteração
        return 1
    else:
        return n *  fatorial(n-1)

contador = 1
soma, termo = 0, 0

while contador < 999:
    soma = soma + 1/(fatorial(contador)) # uso do contador e da soma, menos variáveis, menos pilha
    contador = contador + 1
print (soma)