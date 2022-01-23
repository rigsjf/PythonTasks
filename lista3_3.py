# Desafio 3 - Um hospital quer fazer o diagnóstico de gripe ou dengue a partir de um questionário de sintomas, tendo as perguntas
#  abaixo, faça um programa que faça o diagnóstico deste hospital:

# a. Sente dor no corpo?
# b. Você tem febre?
# c. Você tem tosse?
# d. Está com congestão nasal?
# e. Tem manchas pelo corpo?
# Para o diagnóstico ele tem a seguinte tabela:
# A	    B	C	D	E	Resultado
# Sim 	Sim	Não	Não	Sim	Dengue
# Sim	Sim	Sim	Sim	Não	Gripe
# Não	Sim	Sim	Sim	Não	Gripe
# Sim	Não	Não	Não	Não	Sem doenças
# Não	Não	Não	Não	Não	Sem doenças
# primeira parte, faz as perguntas e recebe os inputs.
pergunta1 = input("Sente dor no corpo? {s/n}")
pergunta2 = input("Você tem febre? {s/n}")
pergunta3 = input("Você tem tosse? {s/n}")
pergunta4 = input("Está com congestão nasal? {s/n}")
pergunta5 = input("Tem manchas pelo corpo? {s/n}")
# segunda parte testa as combinações de resposta e exibe o dagnóstico
if pergunta1 == "s" and pergunta2 == "s" and pergunta3 == "n" and pergunta4 == "n" and pergunta5 == "s":
    print("Diagnóstio: Denge.")
elif (pergunta1 == "s" or pergunta1 == "n") and pergunta2 == "s" and pergunta3 == "s" and pergunta4 == "s" and pergunta5 == "n":
    print("Diagnóstio: Gripe.")
elif (pergunta1 == "s" or pergunta1 == "n") and pergunta2 == "n" and pergunta3 == "n" and pergunta4 == "n" and pergunta5 == "n":
    print("Diagnóstio: Sem doenças!")
else:
    print("Sem diagnóstico!")