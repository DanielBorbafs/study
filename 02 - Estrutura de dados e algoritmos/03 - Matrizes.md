Também conhecida como arrays, é uma estrutura de dados usada para armazenar múltiplos elementos.
Matrizes são usadas por muito algoritmos, é uma das estruturas mais famosas.

Cada elemento armazenado dentro de uma matriz pode ser acessado via index começando do número 0,
exemplo em python:

```python
matriz = [5, 8, 9, 10]
# Acessando o primeiro item
matriz[0]

```

## Classificação por bolhas
Bubble Sort é um algoritmo que classifica uma matriz do menor valor para o maior valor.
*Como funciona*:

```python
1. Percorra a matriz, um valor de cada vez.
2. Para cada valor, compare o valor com o próximo valor.
3. Se o valor for maior que o próximo, troque os valores para que o maior valor fique por último.
4. Percorra a matriz tantas vezes quantos valores houver nela.

lista_numeros = [4,5,8,7,9,10,15,12,3,2]
n = len(lista_numeros)
for i in range(n-1):
    for j in range(n-i-1):
        if lista_numeros[j] > lista_numeros[j+1]:
            lista_numeros[j], lista_numeros[j+1] = lista_numeros[j+1],lista_numeros[j]

print(lista_numeros)

```