# Python program to illustrate
# Finding common member in list
# using 'in' operator
# list1=[1,2,3,4,5]
# list2=[6,7,8,9]
# for item in list1:
# 	if item in list2:
# 		print("overlapping")	
# else:
# 	print("not overlapping")

# mensagem = '''
# 1. Cadastrar usuário
# 2. Listar "usuários"
# 3. Sair
# '''

# opcao = int(input(mensagem))


a_dictionary = {"a": 1, "a": 2, "a": 3, "d": 2, "e": 3}

# get key with max value
max_key = max(a_dictionary, key=a_dictionary.get)

print(max_key)