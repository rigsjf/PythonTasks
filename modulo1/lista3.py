# Enunciado
# Faça um programa que peça a idade do usuário e imprima se ele é maior ou menor de 18 anos.

# idade = int(input("Olá, usuária(o)! Por favor informe sua idade: "))

# if idade < 18:
#     print(f"Usuário menor de 18 anos!")
# else:
#     print(f"Usuário maior de 18 anos!")


# Enunciado
# Faça um programa que peça um número e mostre se ele é positivo ou negativo.

# numero = float(input("Informe um número: ")) # recebe o input

# if numero < 0: #primeiro teste, se é menor que zero
#     print(f"O número informado é negativo")

# elif numero > 0: # segundo teste, se é maior que zero
#     print(f"O número informado é positivo!")

# else: # se é zero, pois não se encaixa em nenhuma das opcoes
#     print(f"Zero é um número neutro")

# Faça um programa que peça dois números e mostre o maior deles.
numero1 = float(input("Digite o primeiro número: "))
numero2 = float(input("Digite o segundo número: "))


if numero1 > numero2:
    print(f"O número {numero1} é maior que {numero2}!")
elif numero1 < numero2:
    print(f"O número {numero2} é maior que {numero1}!")
else:
    print(f"O número {numero1} é igual ao número {numero2}!")
