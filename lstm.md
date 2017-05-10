# LSTM

Originalmente, as arquiteturas geralmente usadas para o processamento de dados 
sequenciais eram as RNNs[1], que são apropriados para esse tipo de dados porque 
permitem que as informações de itens anteriores sejam usadas para processar itens 
posteriores[2]. Isso se dá pela ligação que a camada oculta tem consigo mesma, 
fazendo com que a rede tenha uma espécie de "memória".

Embora seja possível manter uma certa memória usando redes recorrentes, as RNNs não 
são capazes de manter informações na memória por muito tempo[3]. Isso faz com que 
dependências de longa distância entre palavras em uma sentença, por exemplo, não sejam 
capturadas por uma rede recorrente convencional.

```
Ex: A menina disse que não foi se despedir porque quando o João viajou estava muito cansada.
```

Na sentença de exemplo, a interpretação adequada requer que seja mantida na memória 
a informação de que o sujeito é do gênero feminino, entretanto, a distância entre o 
sujeito e o adjetivo em que a informação é relevante é muito grande, de modo que a 
rede não consegue manter essa informação na memória.

Outro problema com as redes recorrentes é o fato de que o algoritmo de backpropagation 
through time faz com que a regra da cadeia seja aplicada repetidamente causando o efeito 
de vanishing e exploding gradients. Como o erro deve ser propagado ao longo das repetidas 
ligações da camada escondida consigo mesma, quando o gradiente é menor que 1, essas 
repetidas multiplicações fazem com que o erro desapareça quando calculado para as 
primeiras camadas e, quando o gradiente é maior que 1, o erro tende a explodir. Isso faz 
com que as redes recorrentes para processamento de linguagem sejam difíceis de treinar[4].

Para lidar com esse problema, foi desenvolvida a long short-terem memory (LSTM). Essa 
arquitetura é uma rede recorrente que tem um componente que funciona como memória, guardando 
as informações relevantes por mais tempo. A memória na LSTM também possui gates pelos quais 
a rede pode "lembrar-se" de certas informações e "esquecer" outras.

<<<imagem LSTM>>>

(Matemática do funcionamento da LSTM)

(Resultados em diversas áreas)
