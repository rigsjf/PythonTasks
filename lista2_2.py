#Faça um programa que peça um valor monetário e diminua-o em 15%. Seu programa deve imprimir a mensagem “O novo valor é [valor]”.
# valor = float(input("Informe um valor em R$: "))
# novo_valor = valor - (valor * 15 / 100)
# print(f"O novo valor é {novo_valor:.2f}")

# Desafio 1 - Peça para o usuário digitar uma velocidade inicial (em m/s), uma posição inicial (em m)
#  e um instante de tempo (em s) e imprima a posição de um projétil nesse instante de tempo.

# Use a fórmula matemática:
# y(t) = y(0) + v(0)*t + (g*(t**2)/2)

# Onde, g é a aceleração da gravidade (-10m/s²), y(t) é a posição final, y(0) é a posição inicial, v(0) é a
#  velocidade inicial e t é o instante de tempo.
# v_inicial = float(input("Informe a velocidade inicial em m/s: "))
# y_inicial = float(input("Informe a posicão inicial em m: "))
# instante_t = int(input("Informe o tempo em s: "))
# g = -10
# y_instante_t = y_inicial + (v_inicial*instante_t) + (g*(instante_t**2)/2)
# print(f"A posição do projétil no instante t= {instante_t} é {y_instante_t}.")

#Faça um programa que informe a data e a hora para o usuário. Para isso use a função datetime.now() do módulo datetime.
from datetime import datetime
print(f"A data e hora atual é {datetime.now()}")

