# Métodos são usados para modificar strings:
name = 'Python is awesome'
name2 = 'PYThoN Is AweSoME'
print(name.title(), '\n',name2.title())

# Temos métodos para deixar as letras maiúsculas e minúsculas:
print(name.lower(),'\n',name.upper())

# Podemos também concatenar strings usando o operador de adição:
first_name = 'daniel'
last_name = 'borba'
full_name = first_name + ' ' + last_name
print(full_name.title())

# Podemos remover espaços em branco usando (lstrip(esquerda), rstrip(direita) e strip(ambos lados))
direita = 'python '
esquerda = ' python'
ambos = ' python '

direta = direita.rstrip()
esquerda = esquerda.lstrip()
ambos = ambos.strip()

print(esquerda, direita, ambos)

# Podemos usar o apóstrofo 
message = 'One of Python"s strengths is its diverse community.'
print(message)

### Exercícios
# 1. Armazene o nome de uma pessoa em uma variável e apresente uma mensagem.
name = 'Daniel'
message = 'Olá ' + name + ', seja bem-vindo!'
print(message)

# 2. Apresente o nome de uma pessoa em letras maiúsculas, minúsculas e com a primeira letra maiúscula
name = 'daniel'
print(name.upper())
print(name.lower())
print(name.title())

# 3. Armazene uma citação famosa de um livro em uma variável
citacao = 'Uma vez Sêneca disse: "Se um homem não sabe para qual porto navega, nenhum vento lhe é favorável."'
print(citacao)

# 4. Faça a etapa anterior mas adicione o nome do autor em uma variável e imprima junto
autor = 'Sêneca'
citacao_nova = autor + ' disse: "Se um homem não sabe para qual porto navega, nenhum vento lhe é favorável."'
print(citacao_nova)

# 5. Crie uma variável com espaços em branco e remova.
espacos = '   Python é uma linguagem de programação incrível!   '
print(espacos)
espacos = espacos.strip()
print(espacos)