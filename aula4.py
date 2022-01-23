"""
A função XYZ

# """

# print('Teste!')

# # Mostrar na tela os números de 0 a 9

# contador = 0

# # while - enquanto
# while contador < 20:
#     print(contador)
#     contador = contador + 1

# Digite um número maior que 0
# numero = int (input('Digite um número maior que zero: '))
# while numero <= 0:
#     print('Entrada inválida.')
#     numero = int (input('Digite um número maior que zero: '))
# print(numero)

N = int(input('Informe quantas notas serão digitadas: '))

soma_das_notas = 0

contador = 0
while contador < N:
    nota = float(input(f'Digite a {contador+1}a. nota: '))
    soma_das_notas = soma_das_notas + nota
    contador = contador + 1

media = soma_das_notas / N
print(f'A média das notas é {media:.2f}.')