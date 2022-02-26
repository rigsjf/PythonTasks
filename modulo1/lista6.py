# from os import sep


# origem_meses = ['janeiro','fevereiro','março','abril','maio','junho','julho','agosto','setembro','outubro','novembro','dezembro']
# duracoes_normal = [31,28,31,30,31,30,31,31,30,31,30,31]
# duracoes_bisexto = [31,29,31,30,31,30,31,31,30,31,30,31]
# meses = []
# tipo_ano = input('Informe se o ano é bisexto {s/n}: ')
# if tipo_ano == 's':
#     for i in range(12):
#         novo_mes = {}
#         novo_mes["nome"] = origem_meses[i]
#         novo_mes["duracao"] = duracoes_bisexto[i]
#         meses.append(novo_mes)
# elif tipo_ano == 'n':
#     for i in range(12):
#         novo_mes = {}
#         novo_mes["nome"] = origem_meses[i]
#         novo_mes["duracao"] = duracoes_normal[i]
#         meses.append(novo_mes)

# for mes in meses:
#     print(mes['nome'],mes['duracao'],sep=' - ') 

#Crie um dicionário para as seguintes relações:
# frutas_verduras = {
#     'banana': {
#         'nome': 'Banana',
#         'preço': 3.0
#     },
#     'cebola':{
#         'nome': 'Cebola',
#         'preço': 4.0
#     },
#     'maca':{
#         'nome': 'Maçã',
#         'preço': 5.7
#     },
#     'abacaxi':{
#         'nome': 'Abacaxi',
#         'preço': 8.0
#     }
# }

# print(frutas_verduras) # antes da mudança
# frutas_verduras['maca']['preço'] = 8.6

# print(frutas_verduras) # depois da mudança

# Crie uma função que receba os valores do nome, idade e e-mail de uma pessoa e guarde-os em um dicionário com
# as chaves ‘nome’, ‘idade’ e ‘email’, respectivamente. Sua função deve retornar esse dicionário.
pessoa = {}
nome = input("Informe o nome da pessoa: ")
idade = int(input("Informe a idade da pessoa: "))
email = input("Informe o email da pessoa: ")

pessoa["nome"] = nome
pessoa["idade"] = idade
pessoa["email"] = email

for dado in pessoa:
    print(pessoa[dado])