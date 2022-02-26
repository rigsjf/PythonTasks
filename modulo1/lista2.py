# # Faça um programa que peça o raio de um círculo, calcule e mostre sua área.

# # Obs: Fórmula da área de um círculo: A = 3,14*(r**2), onde r é o raio.
# print("Olá! Este programa vai calcular a área de um círculo.") #saudacao inicial
# raio = float(input("Digite agora o raio do círculo: ")) #solicita, recebe e armazena um raio float
# area = 3.14*(raio**2) #cálculo da área

# print(f"A área do círculo com raio {raio} é {area}") #saída do resultado


#Faça um programa que pergunte quanto você ganha por hora e o número de horas trabalhadas no 
# mês e depois, calcule e mostre o total do seu salário no referido mês.

# numero = 5
# print("O número é {}".format(numero))
# print('5'.zfill(2))

# Faça um programa que pergunte quanto você ganha por hora e o número de horas trabalhadas
# #  no mês e depois, calcule e mostre o total do seu salário no referido mês.
# salario_hora = float(input("Informe o valor da sua hora: "))
# numero_horas = float(input("Informe a quantidade de horas que trabalhada: "))
# salario_mes = salario_hora * numero_horas
# print(f"O salário mensal é R$ {salario_mes:.2f}!")

# Faça um programa que peça a temperatura em graus Fahrenheit (F), transforme e mostre a temperatura em graus Celsius (°C).
# °C = (5 * (F-32) / 9)

# temperatura_F = float(input("Informe a temperatura (F): "))
# temperatura_C = (5 * (temperatura_F - 32)/9)
# print(f"A temperatura em Cº é {temperatura_C:.2f}.")

# # Obs: Tente também fazer um programa que faça o inverso: peça a temperatura em graus Celsius e a transforme em graus Fahrenheit.
# temperatura_C = float(input("Informe a temperatura (C): "))
# temperatura_F = (temperatura_C *9/5) + 32
# print(f"A temperatura em Fº é {temperatura_F:.2f}.")

# Faça um programa que peça o dia, o mês e o ano para o usuário e imprima a data completa no formato dd/mm/aaaa.
# dia = input("Informe o dia: ")
# mes = input("Informe o mês: ")
# ano = input("Informe do ano: ")
# print(f"A data informada foi {dia}/{mes}/{ano}.")

# Faça um programa que peça 2 números inteiros e um número real, calcule e mostre:
# a) o produto do dobro do primeiro com metade do segundo.
# b) a soma do triplo do primeiro com o terceiro.
# c) o terceiro elevado ao cubo.
# numero1 = int(input("Informe um número inteiro: "))
# numero2 = int(input("Informe outro número inteiro: "))
# numero3 = (numero1 * 2) * (numero2/2)
# numero4 = (numero1 * 3) + numero3
# numero5 = numero3 ** 3
# print(f"O produto do dobro do primeiro com metade do segundo é: {numero3}")
# print(f"A soma do triplo do primerio com o terceiro é: {numero4}")
# print(f"O terceiro número elevado ao cubo é: {numero5}")

# Faça um programa que peça o peso e altura de uma pessoa e calcule seu IMC (Índice de Massa Corporal).
# Obs: IMC = Peso/Altura**2
# peso = float(input("Informe o peso em Kg: "))
# altura = float(input("Informe a altura em M: "))
# imc = peso/(altura**2)
# print(f"O IMC calculado é: {imc:.2f}")

#Faça um programa que peça um valor monetário e aumente-o em 15%. Seu programa deve imprimir a mensagem “O novo valor é [valor]”.
valor = float(input("Informe um valor em R$: "))
novo_valor = valor + (valor * 15 / 100)
print(f"O novo valor é {novo_valor:.2f}")