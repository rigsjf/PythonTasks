# Faça um programa que leia a validade das informações:
# a. Idade: entre 0 e 150;
# b. Salário: maior que 0;
# c. Sexo: M, F ou Outro;
# O programa deve imprimir uma mensagem de erro para cada informação inválida.

# print(f"Olá usuário, informe seus dados a seguir.")
# idade = int(input("Digite a sua idade: "))
# salario = float(input("Digite o seu último salário: "))
# sexo = str(input("Digite o seu sexo {m/f/outro}: "))

# if idade < 0 or idade > 150:
#     print(f"A idade '{idade}' é inválida!")
# else:
#     print(f"A idade digita é {idade} anos.")

# if salario < 0 :
#     print(f"O salário '{salario}' é inválido!")
# else:
#     print(f"O salário digitado é R$ {salario}.")

# if sexo != "m" or sexo != "f":
#     if sexo != "outro":
#         print(f"O sexto '{sexo}' é inválido!")
# else:
#     print(f"O sexo digitado é '{sexo}.")

# Escreva um programa que peça a nota de 3 provas de um aluno e verifique se ele passou ou não de ano.
# Obs.: O aluno irá passar de ano se sua média for maior que 6.

# print(f"Olá usuário, informe as notas a seguir.") #saudação inicial do programa
# nota1 = float(input("Digite a primeira nota: ")) #primeiro input, recebe a primeira nota float
# nota2 = float(input("Digite a segunda nota: ")) #recebe a segunda nota como float
# nota3 = float(input("Digite a terceira nota: ")) #recebe a terceira nota como float
# media = (nota1 + nota2 + nota3)/3 #soma as três notas recebidas e divide por 3

# if media < 6: #testa se a nota é menor que 6
#     print(f"O aluno foi reprovado com a média '{media}' menor que 6.0!")
# else: # se a nota for 6 ou maior, vai entrar nesta condição
#     print(f"O aluno foi aprovado com a média '{media}', maior que 6.0!")


#Vamos fazer um programa para verificar quem é o assassino de um crime. Para descobrir o assassino, a 
# polícia faz um pequeno questionário com 5 perguntas onde a resposta só pode ser sim ou não:
# a. Mora perto da vítima?
# b. Já trabalhou com a vítima?
# c. Telefonou para a vítima?
# d. Esteve no local do crime?
# e. Devia para a vítima?
# Cada resposta sim dá um ponto para o suspeito. A polícia considera que os suspeitos com 5 pontos são 
# os assassinos, com 4 a 3 pontos são cúmplices e 2 pontos são apenas suspeitos, necessitando outras investigações.
#  Valores iguais ou abaixo de 1 são liberados.
# primeira parte, faz as perguntas e recebe os inputs.
pergunta1 = input("Mora perto da vítima? {s/n}")
pergunta2 = input("Já trabalhou com a vítima? {s/n}")
pergunta3 = input("Telefonou para vítima? {s/n}")
pergunta4 = input("Esteve no local do crime? {s/n}")
pergunta5 = input("Devia para a vítima? {s/n}")
# segunda parte declara resultado zero e testa cada resposta para atribuir 1 ao sim
resultado = 0
if pergunta1 == "s":
    resultado = resultado + 1
if pergunta2 == "s":
    resultado = resultado + 1
if pergunta3 == "s":
    resultado = resultado + 1
if pergunta4 == "s":
    resultado = resultado + 1
if pergunta5 == "s":
    resultado = resultado + 1
# terceira parte, testa o resulta e exibe a mensagem
if resultado == 5:
    print("Assassino!")
elif resultado == 3 or resultado == 4:
    print("Cúmplice.")
elif resultado == 2:
    print("Suspeito.")
else:
    print("Liberado.")