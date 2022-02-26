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
    categorias = [] # inicializa uma lista vazia que vai receber as categorias 
    for dado in dados: # percorre a lista de dicionários
        categoria = dado['categoria'] # para cada dicionário, lê a categoria
        if categoria not in categorias: # verifica se a categoria atual não está ainda na lista de categorias
            categorias.append(categoria) # adiciona a categoria que atende ao if
    return categorias # retorna a lista de categorias


def listar_por_categoria(dados, categoria):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    O parâmetro "categoria" é uma string contendo o nome de uma categoria.
    Essa função deverá retornar uma lista contendo todos os produtos pertencentes à categoria dada.
    '''
    produtos = [] # incializa uma lista vazia que vai receber os dicionários/produtos
    for dado in dados:
        if dado['categoria'] == categoria: # verifica se o dicionario/produto em questão tem a categoria dada pelo usuário
            novo_produto = {"id" : dado['id'], "preco" : float(dado['preco']), "categoria" : dado['categoria']}
            produtos.append(novo_produto) # adiciona à lista o dicionario/produto que atende ao if
    produtos = sorted(produtos, key=lambda x: x['preco']) # ordena a lista por preço para facilitar visualizacao do usuario
    return produtos # retorna a lista de produtos
    

def produto_mais_caro(dados, categoria):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    O parâmetro "categoria" é uma string contendo o nome de uma categoria.
    Essa função deverá retornar um dicionário representando o produto mais caro da categoria dada.
    '''
    maior_preco = 0 # incializa a variavel com zero para auxiliar na procura pelo maior preco
    
    for dado in dados: #percorre a lista de dicionarios/produtos
        if dado['categoria'] == categoria: # testa de o produto em questão é da categoria dada
            if float(dado['preco']) > maior_preco: # testa se o preco é maior que o maior_preco ja encontrado
                maior_preco = float(dado['preco']) # atualiza maior preco
                produto_maior_preco = dado # produto_maior_preco recebe o produto em questao
    
    return produto_maior_preco # após o for produto_maior_preco tera o produto com o maior preco da categoria, vai retornar este produto


def produto_mais_barato(dados, categoria):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    O parâmetro "categoria" é uma string contendo o nome de uma categoria.
    Essa função deverá retornar um dicionário representando o produto mais caro da categoria dada.
    '''
    maior_preco = 0
        
    for dado in dados:
        if dado['categoria'] == categoria:
            if float(dado['preco']) > maior_preco:
                maior_preco = float(dado['preco']) # encontra o maior preco para uso na busca do menor
    
    for dado in dados:
        if dado['categoria'] == categoria:
            if float(dado['preco']) < maior_preco: # compara os precos de cada produto com o maior
                produto_menor_preco = dado # marca o produto que tiver um preco menor
                maior_preco = float(dado['preco']) # define o menor valor como novo teto de preco para buscar um menor, se houver
    return produto_menor_preco #apos o for vai retornar o produto com menor preco da categoria

def top_10_caros(dados):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    Essa função deverá retornar uma lista de dicionários representando os 10 produtos mais caros.
    '''
    todos_produtos = [] # inicializa lista vazia para receber uma copia de dados com os preços no tipo float, vai excluir produtos, nao pode usar o dados original
    produtos_top_10_mais_caros = [] # inicializa uma lista vazia para receber os 10 mair caros
    
    def procura(id_procurado): # funçao que recebe um id e retorna o indice do id na lista auxiliar
        for i in range(len(todos_produtos)):
            if todos_produtos[i]['id'] == id_procurado:
                return i

    for dado in dados: # looping para fazer a copia de dados, porem transformando o preco com tipo float
        cada_produto = {'id': dado['id'], 'preco' : float(dado['preco']), 'categoria' : dado['categoria'] } # cria um novo dicionario convertendo o preco para tipo float antes de adicionar a lista
        todos_produtos.append(cada_produto)
    
    for i in range(10): # looping que executa 10 vezes procurando o maior preco
        produtos_top_10_mais_caros.append(max(todos_produtos, key=lambda x:x['preco'])) #encontra o maior preco e adiciona na lista top 10
        indice = procura(produtos_top_10_mais_caros[i]['id']) # chama a função que procura item na lista auxiliar para excluir este item
        todos_produtos.pop(indice) # exclui o item, evitando duplicar no top 10
    produtos_top_10_mais_caros = sorted(produtos_top_10_mais_caros, key=lambda x: x['preco']) # ordena a lista por preços para facilitar visualizacao do usuario
    return  produtos_top_10_mais_caros # retorna a lista com top 10 mais caros
    
def top_10_baratos(dados):
    '''
    O parâmetro "dados" deve ser uma lista de dicionários representando os produtos.
    Essa função deverá retornar uma lista de dicionários representando os 10 produtos mais caros.
    '''
    todos_produtos = [] # inicializa lista vazia para receber uma cópia de dados
    produtos_top_10_mais_baratos = [] # inicializa uma lista vazia para receber os 10 mais baratos
    
    def procura(id_procurado): # funcao que recebe o id e retornar o indice do id na lista auxiliar
        for i in range(len(todos_produtos)):
            if todos_produtos[i]['id'] == id_procurado:
                return i

    for dado in dados: # looping para fazer a copia de dados transformando os precos em float
        cada_produto = {'id': dado['id'], 'preco' : float(dado['preco']), 'categoria' : dado['categoria'] } # cria um novo dicionario convertendo o preco para tipo float antes de adicionar a lista
        todos_produtos.append(cada_produto)
    
    for i in range(10): # looping que executa 10 vezes procurando o menor preço
        produtos_top_10_mais_baratos.append(min(todos_produtos, key=lambda x:x['preco'])) # encontra o menor preco e adiciona na lista top 10
        indice = procura(produtos_top_10_mais_baratos[i]['id']) # procura o item da lista auxiliar para excluir
        todos_produtos.pop(indice) # excluir o item, evitando duplicar no top 10
    
    produtos_top_10_mais_baratos = sorted(produtos_top_10_mais_baratos, key=lambda x: x['preco']) # ordena a lista por preços para facilitar visualizacao do usuario
    return produtos_top_10_mais_baratos # retorna a lista com top 10 mais baratos

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
    # mensagem para exibir ao usuário
    mensagem = ''' 
        Bem vindo ao cadastros de produtos, escolha sua opção:

        1. Listar categorias
        2. Listar produtos de uma categoria
        3. Produto mais caro por categoria
        4. Produto mais barato por categoria
        5. Top 10 produtos mais caros
        6. Top 10 produtos mais baratos
        0. Sair
    '''

    opcao_menu = int(input(mensagem)) # recebe o input do usuário de acordo com a mensagem
    
    while opcao_menu != 0: # quando a opção for 0 vai parar o programa
        if opcao_menu == 1: # opcao do usuario para listar categorias
            categorias = listar_categorias(dados) # chama a função para listar as categorias, retorna lista de categorias
            categorias = sorted(categorias) # ordena as categorias para facilitar visualizacao do usuario
            print('Lista de categorias: ')
            for i in range(len(categorias)): # looping usando range para imprimir as categorias
                nome = categorias[i]
                nome = nome.capitalize()
                print(f'{i}. {nome}')

        elif opcao_menu == 2: # opcao do usuario para buscar produtos de uma determinada categoria
            categoria = input('Digite a categoria que deseja buscar (minúsculas): ') # recebe o input do usuario
            produtos = listar_por_categoria(dados, categoria) # chama a função para listar os produtos de uma categoria, retorna uma lista de dicionarios
            if len(produtos) == 0: # se retornar uma lista vazia, nao foram encontrados produtos com a categoria digitada
                print('Nenhum produto encontrado nesta categoria!')
            else:
                categoria = categoria.capitalize() # formatar a categoria com inicial maiuscula
                print('Lista de produtos da categoria "{categoria}": ')
                for i in produtos: # looping sem usar o range, iterando na lista, para imprimir produtos
                    print(f'{categoria}, Id: {i["id"]}, Preço: {i["preco"]}')

        elif opcao_menu == 3: # opcao para buscar produto mais caro por categoria
            categorias = listar_categorias(dados) # chama a função para listar as categorias, retorna lista de categorias
            produtos_maior_preco = [] # inicializa lista vazia para receber os produtos com maior preco de cada categoria
            for i in range(len(categorias)): # percorre a lista de categorias
                produtos_maior_preco.append(produto_mais_caro(dados, categorias[i])) # para cada categoria procura o produto mais caro, retorna dicionario e adiciona na lista
            produtos_maior_preco = sorted(produtos_maior_preco, key=lambda x: x['categoria']) # ordena a lista por categorias para facilitar visualizacao do usuario
            print('Lista dos produtos mais caros por categoria:')
            for j in produtos_maior_preco: # looping para imprimir os produtos de maior preço
                categoria = j['categoria'].capitalize() # formatar a categoria com inicial maiuscula
                print(f'{categoria}, Id: {j["id"]}, Preço: {j["preco"]} ')

        elif opcao_menu == 4: # opcao para buscar produto mais barato por categoria
            categorias = listar_categorias(dados) # chama a funçao para listas as categorias, retorna lista de categorias
            produtos_menor_preco = [] # inicializa lista vazia para receber os produtos de menor preco de cada categoria
            for i in range(len(categorias)): # percorre a lista de categorias
                produtos_menor_preco.append(produto_mais_barato(dados, categorias[i])) # para cada categoria procura o produto mais caro, retorna dicionario e adiciona na lista
            produtos_menor_preco = sorted(produtos_menor_preco, key=lambda x: x['categoria']) # ordena a lista por categorias para facilitar visualizacao do usuario
            print('Lista dos produtos mais baratos por categoria:')
            for j in produtos_menor_preco: # looping para imprimir os produtos de menor preco
                categoria = j['categoria'].capitalize() # formatar a categoria com inicial maiuscula
                print(f'{categoria}, Id: {j["id"]}, Preço: {j["preco"]} ')
        
        elif opcao_menu == 5: # opcao para buscar os 10 produtos mais caros
            produtos_top10_mais_caros = top_10_caros(dados) # chama a função que busca os 10 mais caros, retorna  uma lista de dicionarios
            print('Lista dos 10 produtos mais caros:')
            for i in produtos_top10_mais_caros: # loop para imprimir os 10 mais caros
                categoria = i['categoria'].capitalize() # formatar a categoria com inicial maiuscula
                print(f'Preço: {i["preco"]}, {categoria}, Id: {i["id"]}') # imprime o preço primeiro, mais fácil visualização pelo usuário
        
        elif opcao_menu == 6: # opcao para buscar os 10 produtos mais baratos
            produtos_top10_mais_baratos = top_10_baratos(dados) # chama a função que busca os 10 mais baratos, retorna uma lista de dicionarios
            print('Lista dos 10 produtos mais baratos:')
            for i in produtos_top10_mais_baratos: # loop para imprimir os 10 mais baratos
                categoria = i['categoria'].capitalize() # formatar a categoria com inicial maiuscula
                print(f'Preço: {i["preco"]}, {categoria}, Id: {i["id"]}') # imprime o preço primeiro, mais fácil visualização pelo usuário

        opcao_menu = int(input(mensagem)) # recebe o input do usuário de acordo com a mensagem

# Programa Principal - não modificar!
d = obter_dados()
menu(d)
