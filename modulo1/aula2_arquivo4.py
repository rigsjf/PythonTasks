numero1 = float(input("Digite o primeiro número: "))
numero2 = float(input("Digite o segundo número: "))
operacao = input("Escolha uma operação (+, -, *, /): ")

if operacao == "+":
    resultado = numero1 + numero2
elif operacao == "-":
    resultado = numero1 - numero2
elif operacao == "*":
    resultado = numero1 * numero2
elif operacao == "/":
    resultado = numero1 / numero2

print(f"O resultado da operação é {resultado}")