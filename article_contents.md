# Proposta de conteúdo para o artigo

* Redes Neurais Artificiais
* Deep Learning
* RNN
* LSTM
* RNN e LSTM em Deep Learning
* Representação vetorial de palavras
* Word2Vec
* GloVe
* Comparativo
* Aplicação (análise de sentimento)

# Proposta para o poster

* Representação de palavras
* Limitações das representações discretas
* Representações distribuídas
* word2vec
* GloVe
* Comparação qualitativa
* Comparação quantitativa (instrínseca - dados do google - e extrínseca - alguma tarefa ???)

## Representação de palavras

Representar uma palavra de modo que esta possa servir de input a um sistema computacional não é uma tarefa óbvia. O próprio conceito de _palavra_ é complexo em si mesmo. Qualquer que seja a representação escolhida, é bem provável que certas nuances serão deixadas de lado e alguns "detalhes" serão perdidos.

## Representações discretas

Historicamente as palavras têm sido representadas de modo discreto. Um exemplo típico dessas representações é o _one-hot vector_. Nessa representação, há um vetor n-dimensional (onde n é o tamanho do vocabulário) com 0 em todas as posições exceto por uma, que representa a posição da palavra. Essa representação tem a disvantagem de não transparecer qualquer semelhança entre palavras próximas como "gato" e "felino" ou "amar" e "amor". Seria possível, entretanto, criar um mapeamento de um one-hot vector para algum tipo de representação que permitisse codificar as semelhanças entre palavras.

## Representações distribuídas

Um alternativa às representações discretas é a ideia de poder codificar a semelhança entre palavras através da própria representação. A ideia por trás desse tipo de representação é a de que o significado de uma palavra está intimamente ligado ao contexto que é mais provável de aparecer com essa palavra. Nós apresentaremos dois desses modelos: word2vec e GloVe.

## word2vec

O word2vec é um modelo que representa as palavras como vetores que são capazes de prever entre uma palavra e seu contexto. A ideia é atualizar os vetores de cada palavra até que seja possível prever uma palavra que acontece no contexto de uma palvra central, ou prever uma palavra central para um dado contexto. Há, portanto, uma função J(θ) e o objetivo do word2vec é minimizar essa função.

### Skip-gram

### CBOW

// ...

## GloVe

// ...