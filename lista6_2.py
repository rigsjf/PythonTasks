# colunas = {
#      'Maria': {
#          'Coluna A': 1,
#          'Coluna B': 5
#      },
#      'Pedro':{
#          'Coluna A': 0.5,
#          'Coluna B': 3
#      },
#      'João':{
#          'Coluna A': 3.2,
#          'Coluna B': 1
#      }
#  }
# print(colunas['Pedro']['Coluna B'])

# Faça um programa que conte quantas vezes cada elemento aparece em uma lista (pode criar uma lista na mão).
# Esse programa deverá guardar os dados em um dicionário no qual as chaves são os elementos da lista e os 
# valores são a contagem de quantas vezes esse elemento aparece.
nomes_de_gatos = ['Puppy','Rabito','Radar','Ralph','Rick','Ringo','Ritchie','Sally','Samy','Sandy',
'Pongo','Abelhinha','Aguia','Alf','Alfa','Algodão','Almofadinhas','Amor','Amora',
'Amy','Andy','Angel','Abelhinha','Aguia','Alf','Alfa','Algodão','Almofadinhas','Amor',
'Amora','Amy','Andy','Angel','Abelhinha','Aguia','Alf','Alfa','Algodão','Almofadinhas',
'Amor','Amora','Amy','Andy','Angel','Abelhinha','Aguia','Alf','Alfa','Algodão','Almofadinhas',
'Amor','Amora','Amy','Andy','Angel','Snow','Snuffles','Soneca','Sushi','Suzi','Tambor',
'Tato','Tatty','Teddy','Teka','Poof','Snow','Snuffles','Soneca','Sushi','Suzi',
'Tambor','Tato','Tatty','Teddy','Teka','Poof']
nomes = {}
for i in range(len(nomes_de_gatos)):
    if nomes_de_gatos[i] in nomes:
        nome = nomes_de_gatos[i]
        qtd = nomes.get(nome)
        nomes[nome] = qtd + 1
    else:
        nomes[nomes_de_gatos[i]] = 1
for k in nomes:
    print(k,nomes[k])
