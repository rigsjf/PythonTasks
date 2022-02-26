import classe_loja
import classe_cliente
import funcoes

# z = funcoes.soma(2, 3)
# print(z)

# w = funcoes.subtracao(5, 3)
# print(w)

# pessoa_1 = classes.Pessoa('Octavio', 28)
# print(type(pessoa_1))
# print(pessoa_1.__dict__)

'''
Este é um programa para uma loja que aluga bicicletas para passeio. As bicicletas são locadas e devolvidas sempre no mesmo dia,
assim o programa começa sempre com o mesmo estoque todos os dias.
'''

estoque = funcoes.obter_dados()
clientes = []
alugueis = []
funcoes.menu(estoque, clientes, alugueis)