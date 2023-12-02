## Sistema de Recomendação de Filmes

Este algoritmo de aprendizado de máquina recomenda os 5 principais filmes com base em um determinado filme de entrada. As recomendações são geradas por meio de filtragem colaborativa, onde o algoritmo analisa os filmes que usuários com gostos semelhantes ao filme de entrada também assistiram.

### Modo de Uso

Para usar o algoritmo de recomendação de filmes, basta passar o nome de um filme como argumento de linha de comando. O algoritmo retornará então uma lista dos 5 principais filmes semelhantes ao filme de entrada.

### Requisitos:

1. Python 3.x
2. NumPy
3. Scikit-Learn
4. Pandas
5. Streamlit


### Instalação

#### Clonar o repositório:

```git clone https://github.com/marromcruz/projeto-interdisciplinar-ifsp.git```

Instalar as dependências:

```pip install numpy scikit-learn pandas pickle streamlit```

Exemplo

Aqui está um exemplo de como usar o algoritmo de recomendação:

```
$ python recommend.py "Toy Story"
Top 5 recommendations:
1. The Incredibles
2. Finding Nemo
3. A Bug's Life
4. Monsters, Inc.
5. Up
```

## Contato
Se você tiver alguma dúvida ou sugestão, não hesite em entrar em contato conosco pelo e-mail marlomsilvacruz@gmail.com.
