import os

input_file = "disciplinas.tex"

with open(input_file, "r", encoding="utf-8") as f:
    lines = f.readlines()

disciplina_atual = []
nome_disciplina = None
nivel_chaves = 0

for line in lines:
    if line.startswith(r"\PPCDefinaDisciplina{"):
        # Extrai o nome do parâmetro
        nome_disciplina = line.split("{")[1].split("}")[0]
        disciplina_atual = [line]
        # Conta chaves abertas
        nivel_chaves = line.count("{") - line.count("}")
    elif nome_disciplina:
        disciplina_atual.append(line)
        # Atualiza contagem de chaves
        nivel_chaves += line.count("{") - line.count("}")
        # Se todas as chaves fechadas, termina a disciplina
        if nivel_chaves == 0:
            # Escreve arquivo
            filename = f"{nome_disciplina}.tex"
            with open(filename, "w", encoding="utf-8") as f_out:
                f_out.writelines(disciplina_atual)
            nome_disciplina = None
            disciplina_atual = []

print("Arquivos criados com sucesso.")
