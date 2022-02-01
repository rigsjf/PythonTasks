import json
import os.path
import sys

def obter_dados():
    '''
    Essa função carrega os dados dos produtos e retorna uma lista de dicionários, onde cada dicionário representa um produto.
    NÃO MODIFIQUE essa função.
    '''
    with open(os.path.join(sys.path[0], 'dados.json'), 'r') as arq:
        dados = json.loads(arq.read())
    return dados

def listar_categorias(dados):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    Essa função deverá retornar uma lista contendo todas as categorias dos diferentes produtos.
    Cuidado para não retornar categorias repetidas.    
    '''
    categorias = []
    for dado in dados:
        categoria = dado['categoria']
        if categoria not in categorias:
            categorias.append(categoria)
    return categorias


def listar_por_categoria(dados, categoria):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    O parâmetro "categoria" é uma string contendo o nome de uma categoria.
    Essa função deverá retornar uma lista contendo todos os produtos pertencentes à categoria dada.
    '''
    produtos = []
    for dado in dados:
        if dado['categoria'] == categoria:
            produto = dado['id']
            produtos.append(produto)
    return produtos
    

def produto_mais_caro(dados, categoria):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    O parâmetro "categoria" é uma string contendo o nome de uma categoria.
    Essa função deverá retornar um dicionário representando o produto mais caro da categoria dada.
    '''
    maior_preco = 0
    id_maior_preco = 0

    for dado in dados:
        if dado['categoria'] == categoria:
            if float(dado['preco']) > maior_preco:
                maior_preco = float(dado['preco'])
                id_maior_preco = dado['id']
    produto_maior_preco = {'id': id_maior_preco, 'preco' : maior_preco, 'categoria' : categoria }
    return produto_maior_preco


def produto_mais_barato(dados, categoria):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    O parâmetro "categoria" é uma string contendo o nome de uma categoria.
    Essa função deverá retornar um dicionário representando o produto mais caro da categoria dada.
    '''
    ...

def top_10_caros(dados):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    Essa função deverá retornar uma lista de dicionários representando os 10 produtos mais caros.
    '''
    ...

def top_10_baratos(dados):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    Essa função deverá retornar uma lista de dicionários representando os 10 produtos mais caros.
    '''
    ...

def menu(dados):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    Essa função deverá, em loop, realizar as seguintes ações:
    - Exibir as seguintes opções:
        1. Listar categorias
        2. Listar produtos de uma categoria
        3. Produto mais caro por categoria
        4. Produto mais barato por categoria
        5. Top 10 produtos mais caros
        6. Top 10 produtos mais baratos
        0. Sair
    - Ler a opção do usuário.
    - No caso de opção inválida, imprima uma mensagem de erro.
    - No caso das opções 2, 3 ou 4, pedir para o usuário digitar a categoria desejada.
    - Chamar a função adequada para tratar o pedido do usuário e salvar seu retorno.
    - Imprimir o retorno salvo. 
    O loop encerra quando a opção do usuário for 0.
    '''
    mensagem = '''
        1. Listar categorias
        2. Listar produtos de uma categoria
        3. Produto mais caro por categoria
        4. Produto mais barato por categoria
        5. Top 10 produtos mais caros
        6. Top 10 produtos mais baratos
        0. Sair
    '''

    opcao_menu = int(input(mensagem))
    
    while opcao_menu != 0:
        if opcao_menu == 1:
            categorias = listar_categorias(dados)
            print(categorias)
        elif opcao_menu == 2:
            categoria = input('Digite a categoria que deseja buscar: ')
            produtos = listar_por_categoria(dados, categoria)
            if len(produtos) == 0:
                print('Nenhum produto encontrado nesta categoria!')
            else:
                print(produtos)
        elif opcao_menu == 3:
            categorias = listar_categorias(dados)
            produtos_maior_preco = []
            for i in range (len(categorias)):
                produtos_maior_preco.append(produto_mais_caro(dados, categorias[i]))
            print(produtos_maior_preco)

        elif opcao_menu == 4:
            produto_mais_barato(dados, categoria)

        elif opcao_menu == 5:
            top_10_caros(dados)

        elif opcao_menu == 6:
            top_10_baratos(dados)

        opcao_menu = int(input(mensagem))



# Programa Principal - não modificar!
d = obter_dados()
menu(d)
