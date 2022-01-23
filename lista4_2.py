#Faça um programa que imprima a tabuada do 9 (de 9*1 a 9*10) usando loops.
# print(f'Tabuada do 9')
# for contador in range(1, 11):
#     valor_da_tabuada = 9 * contador
#     print(f'9 x {contador} = {valor_da_tabuada}')

# Faça um programa, usando loops, que peça para um usuário digitar um número e 
# que só finaliza quando o usuário digitar 0. Ao final imprima a soma de todos os números digitados.

numero = int (input('Digite um número qualquer ou zero para sair: '))
soma = 0
while numero != 0:
    numero = int (input('Digite um número qualquer, ou zero para sair: '))
    for N in range(1, numero+1):
    print('teste')
