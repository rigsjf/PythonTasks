import funcoes
class Loja:
    def __init__(self, nome):
        self.nome = nome
        self.estoque = funcoes.obter_dados()

    def listar_bicicletas(self):
        bicicletas = [] # incializa uma lista vazia que vai receber os dicionários/produtos
       
        for item in self.estoque:
            novo_item = {"id" : item['id'], "cor" : item['cor'], "tamanho" : item['tamanho']}
            bicicletas.append(novo_item) # adiciona à lista o dicionario/item
        return bicicletas # retorna a lista de bicicletas