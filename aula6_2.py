# Programa que cadastra um usuário

# usuario = {}
# nome = input('Digite o nome: ')
# email = input('Digite o email: ')
# cidade = input('Digite a cidade: ')

# usuario['nome'] = nome
# usuario['email'] = email
# usuario['cidade'] = cidade

# for campo in usuario:
#     print(usuario[campo])

# Programa que cadastra várias pessoas

usuarios = []
opcao = int(input('\nEscolha uma opção: \n1. Cadastrar usuário \n2. Listar usuários \n3. Encerrar\n'))

while opcao != 3:
    if opcao == 1:
        nome = input('Digite o nome do novo usuário: ')
        email = input('Digite o email do usuário: ')

        novo_usuario = {}
        novo_usuario['nome'] = nome
        novo_usuario['email'] = email
        usuarios.append(novo_usuario)
    elif opcao == 2:
        for usuario in usuarios:
            print(usuario)

    opcao = int(input('\nEscolha uma opção: \n1. Cadastrar usuário \n2. Listar usuários \n3. Encerrar\n'))

# Crie um dicionário cujas chaves são os meses do ano e os valores são a duração (em dias) de cada mês.
