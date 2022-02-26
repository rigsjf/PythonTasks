# lista = [5, 2, 7, [10, 20]]
# print(lista[3][0])

#usuario_lista = ["Paulo Sestini", "paulo@email.com", "Votuporanga"]

# Dicionário
# usuario = {
#     "email": "paulo@email.com",
#     "nome": "Paulo Sestini",
#     "cidade": "Votuporanga"
# }
# print(usuario["nome"])
# print(usuario["email"])
# print(usuario["cidade"])
# print(usuario)

# usuario["telefone"] = 123456789

# print(usuario)

usuario = {
    "email": "paulo@email.com",
    "nome": "Paulo Sestini",
    "cidade": "Votuporanga"
}

if 'email' in usuario:
    print(usuario['email'])
else:
    print('Não existe email')