alunos_e_notas = {
    "paulo": 8,
    "matheus": 7,
    "gabriela": 4.5,
    "amanda": 9,
    "ivan": 4,
    "larissa": 7.5
}

# função para retornar reprovados e aprovados

def calcular_aprovacao(alunos_e_notas):
    aprovados = []
    reprovados = []
    for aluno in alunos_e_notas:
        nota = alunos_e_notas[aluno]
        if nota >= 5:
            aprovados.append(aluno)
        else:
            reprovados.append(aluno)
        
    return aprovados, reprovados
aprovados, reprovados = calcular_aprovacao(alunos_e_notas)
print(aprovados, reprovados)
