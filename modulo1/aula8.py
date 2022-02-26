# exemplos de recursão
def somar(a,b):
    resutlado = a + b
    return resutlado

def pedir_e_somar():
    num1 = int(input('Informe um numero: '))
    num2 = int(input('Informe outro numero: '))
    resultado = somar(num1, num2)
    return resultado

print(pedir_e_somar())

# exemplo de fatorial com recursao:
def fatorial(n):
    if n == 0:
        return 1
    else:
        return n *  fatorial(n-1)

print(fatorial(5))