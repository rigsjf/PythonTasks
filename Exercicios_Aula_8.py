# Faça uma função que receba uma lista de números inteiros e retorne, utilizando retorno multiplo,
# uma lista só com os números pares da lista original e outra com somente os números ímpares

def separa_pares_impares(numeros):
    pares = []
    impares = []
    for numero in numeros:
        if numero % 2 == 0:
            pares.append(numero)
        else:
            impares.append(numero)
        
    return pares, impares
numeros = [1, 3, 5, 2, 4, 6, 79, 23, 22, 89, 80]
pares, impares = separa_pares_impares(numeros)
print(pares, impares)

# Exercício 3
# Faça uma função para calcular o salário de um funcionário com a seguinte especificação:
# - A função deve receber dois parâmetros obrigatórios, `valor_hora` e `horas`, indicando respectivamente o valor recebido por hora e a quantidade de horas trabalhadas no mês
# - A função deve receber, por meio dos `**kwargs`, o parâmetro opcional `bonus`, que é o bônus que o funcionário recebeu no mês
# - Caso o parâmetro `bonus` seja passado, ele deve ser somado ao salário final do mês

def calcula_salario(valor_hora, horas, **kwargs):
    salario = valor_hora * horas
    if 'bonus' in kwargs:
        salario = salario + kwargs['bonus']
    return salario

print(calcula_salario(12.5, 80, bonus = 100.50))        