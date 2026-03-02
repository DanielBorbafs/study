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