import json
import os.path
import sys
import classe_loja
import classe_cliente

def listar_bicicletas(estoques):
    bicicletas = [] # incializa uma lista vazia que vai receber os dicionários/produtos
    for item in estoques:
        novo_item = {"id" : item['id'], "cor" : item['cor'], "tamanho" : item['tamanho']}
        bicicletas.append(novo_item) # adiciona à lista o dicionario/item
    return bicicletas # retorna a lista de bicicletas

def listar_bicicletas_disponiveis(estoques, alugueis):
    bicicletas_alugadas = []
    for item in alugueis:
        id = alugueis['id'] # para cada dicionário, lê a categoria
        if id not in bicicletas_alugadas: # verifica se a categoria atual não está ainda na lista de categorias
            bicicletas_alugadas.append(id) # adiciona a categoria que atende ao if       

    bicicletas_disponiveis = [] # incializa uma lista vazia que vai receber os dicionários/produtos
    for i in range(len(estoques)):
        if estoques[i]['id'] not in bicicletas_alugadas:
            novo_item = {"id" : estoques[i]['id'], "cor" : estoques[i]['cor'], "tamanho" : estoques[i]['tamanho']}
            bicicletas_disponiveis.append(novo_item) # adiciona à lista o dicionario/item
    return bicicletas_disponiveis # retorna a lista de bicicletas disponiveis

def alugar_bicicleta(id, cliente, tipo):
    pass

def obter_dados():
    '''
    Lê os dados das bicicletas e retorna uma lista de dicionários. Representa o estoque.
    '''
    with open(os.path.join(sys.path[0], 'dados.json'), 'r') as arq:
        dados = json.loads(arq.read())
    return dados

def menu(estoques, clientes, alugueis):
    '''
    funcão para carregar o menu e manipular o estoque de bicicletas
    '''
    # mensagem para exibir ao usuário
    mensagem = ''' 
        Bem vindo ao empréstimo de bicicletas, escolha sua opção:

        1. Listar bicicletas 
        2. Listar bicicletas disponíveis
        3. Cadastrar clientes
        4. Listar clientes
        5. Alugar
        6. Listar aluguéis
        7. Devolver
        0. Sair
    '''
    opcao_menu = int(input(mensagem)) # recebe o input do usuário de acordo com a mensagem
   
    while opcao_menu != 0: # quando a opção for 0 vai parar o programa
        if opcao_menu == 1: # opcao do usuario para listar bicicletas
            itens = listar_bicicletas(estoques) # chama a função para listar as bicicletas, retorna lista de bicicletas
            print('Lista de Bicicletas: ')
            for i in range(len(itens)): # looping usando range para imprimir as categorias
                cor = itens[i]['cor']
                tamanho = itens[i]['tamanho']
                print(f'{i}. {cor} - {tamanho}')

        elif opcao_menu == 2: # opcao do usuario para listar bicicletas disponíveis
            itens = listar_bicicletas_disponiveis(estoques, alugueis) # chama a função para listar as bicicletas, retorna lista de bicicletas
            print('Lista de Bicicletas Disponíveis: ')
            for i in range(len(itens)): # looping usando range para imprimir as bicicletas disponíveis
                cor = itens[i]['cor']
                tamanho = itens[i]['tamanho']
                print(f'{i}. {cor} - {tamanho}')

        elif opcao_menu == 3: # opcao para Cadastrar clientes
            pass

        elif opcao_menu == 4: # opcao para Listar clientes
            pass
        
        elif opcao_menu == 5: # opcao para Alugar
            id = input(print('Informe o código da bicicleta: '))
            cliente = input(print('Informe o nome do cliente: '))
            tipo = input(print('Informe o tipo de locação {dia/semana/mes}: '))
            alugar_bicicleta(id, cliente, tipo)
        
        elif opcao_menu == 6: # opcao listar aluguéis
            pass

        elif opcao_menu == 7: # opcao para Devolver
            pass

        opcao_menu = int(input(mensagem)) # recebe o input do usuário de acordo com a mensagem