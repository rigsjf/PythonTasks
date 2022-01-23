origem_meses = ['janeiro','fevereiro','março','abril','maio','junho','julho','agosto','setembro','outubro','novembro','dezembro']
duracoes_normal = [31,28,31,30,31,30,31,31,30,31,30,31]
duracoes_bisexto = [31,29,31,30,31,30,31,31,30,31,30,31]
meses = []
tipo_ano = input('Informe se o ano é bisexto {s/n}: ')
if tipo_ano == 's':
    for i in range(12):
        novo_mes = {}
        novo_mes["nome"] = origem_meses[i]
        novo_mes["duracao"] = duracoes_bisexto[i]
        meses.append(novo_mes)
elif tipo_ano == 'n':
    for i in range(12):
        novo_mes = {}
        novo_mes["nome"] = origem_meses[i]
        novo_mes["duracao"] = duracoes_normal[i]
        meses.append(novo_mes)

for mes in meses:
    print(mes['nome'] + ' - ' + mes['duracao']) 



