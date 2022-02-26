# Faça um programa que fique pedindo uma resposta do usuário, entre 1, 2 e 3. Se o usuário digitar 1, o programa 
# deve cadastrar um novo usuário e guardar esse cadastro num dicionário cuja chave será o CPF da pessoa. Quando 
# o usuário digitar 2, o programa deve imprimir os usuários cadastrados; e se o usuário digitar 3, o programa deve fechar.

# Exemplo do dicionário:

# ‘987.654.321-00’: {‘nome’: Maria, ‘idade’: 20, ‘email’ :             maria@mail.com}

usuarios = {}
opcao = int(input('\nEscolha: \n1. Cadastrar \n2. Imprimir \n3. Pesquisar \n4. Fechar\n'))

while opcao != 4:
    if opcao == 1:
        cpf = input('Informe o CPF do novo usuário: ')
        nome = input('Informe o nome do novo usuário: ')
        idade = input('Informe a idade do novo usuário: ')
        email = input('Informe o email do novo usuário: ')
        usuarios[cpf] = {'nome' : nome, 'idade' : idade, 'email' : email}
                
    elif opcao == 2:
        for usuario in usuarios:
            print(usuarios[usuario])
    
    elif opcao == 3:
        cpf_procuardo = input('Informe o CPF {xxx.xxx.xxx-xx} :')
        if cpf_procuardo in usuarios:
            print('Usuário cadastrado:')
            print(usuarios[cpf_procuardo])
        else:
            print('Usuário desconhecido!')
    
    opcao = int(input('\nEscolha: \n1. Cadastrar \n2. Imprimir \n3. Pesquisar \n4. Fechar\n'))

# Faça um programa, usando loops, que peça para um usuário digitar um número e que
# só finaliza quando o usuário digitar 0. Ao final imprima a soma de todos os números digitados.

numeros = []
opcao = int(input('Digite um número: '))
while opcao != 0:
    numeros.append(opcao)
    opcao = int(input('Digite um número: '))
soma = sum(numeros)
print(soma)

# Faça um programa que sorteia um número N e peça para o usuário adivinhar o número sorteado. A cada resposta errada,
#  o seu programa deve imprimir um aviso dizendo que a resposta está errada e pedir novamente uma resposta ao usuário.

# Para a realização desse exercício, utilize alguma função da biblioteca random (e.g. randint()).
import random
sorteado = random.randint(0, 10)

opcao = int(input('Adivinhe um número: '))
while opcao != sorteado:
    opcao = int(input('Número errado, tente novamente! Digite um número: '))
print(f'Você adivinhou, o número oculto era {sorteado}!')

# Faça um programa que peça para o usuário digitar a idade, o salário e o sexo de uma pessoa até que as entradas digitadas sejam válidas.
# a. Idade: entre 0 e 150;
# b. Salário: maior que 0;
# c. Sexo: M, F ou Outro.
validacao = False
teste1 = False
teste2 = False
teste3 = False
while validacao == False:
    idade = int(input('Informe a idade: '))
    salario = float(input('Informe o salário: '))
    sexo = input('Informe o sexo {M/F/Outro}: ')
    if idade > 0 or idade < 150:
        teste1 = True
    if salario > 0:
        teste2 = True
    if sexo == 'M' or sexo == 'F' or sexo == 'Outro':
        teste3 = True
    if teste1 and teste2 and teste3:
        validacao = True
   
print(f'Dados digitados: idade: {idade}, salário: R$ {salario:.2f} e sexo: {sexo}.')
