# Resumão - LeCun, Bengio, Hinton (2015)

## Abstract:

- Deep learning permite que modelos computacionais compostos de múltiplas camadas _aprendam representações de dados_ com vários múltiplos de abstração;
- Esses métodos melhoraram o estado da arte em várias áreas;
- Deep learning descobre estruturas intricadas em data sets grandes usando o algoritmo de _backpropagation_ pra indicar como uma máquina deve _mudar os parâmetros internos_ que são usados pra _computar uma representação em cada camada a partir da representação na camada anterior_;
- Redes _convolucionais_ trouxeram progressos para as áreas de processamento de imagens, vídeo, voz e audio; redes _recorrentes_, para dados sequenciais, como texto e voz.

## Intro

Machine learning é usada em várias áreas da vida atual (web search, filtragem de conteúdo, identificação de objetos em imagens, reconhecimento de voz, etc). Essas aplicações usam uma classe de técnicas chamada _Deep Learning_.

_Técnicas convencionais de machine-learning eram limitadas_ na sua capacidade de processar dados naturais. Por décadas, construir um sistema de machine-learning requeria uma engenharia cuidadosa e grande conhecimento no domínio para _extrair features que transformassem os dados crus em um vetor de features para um classificador_.

_Representation learning_ permite que uma máquina extraia as representações necessárias para detecção e classificação a partir dos dados crus. Métodos de _deep-learning_ são métodos de representation-learning com múltiplos níveis de representação. Começando com os dados crus, cada camada obtém uma representação mais abstrata a partir da camada anterior.

Em uma tarefa de classificação, camadas mais altas vão amplificar features mais importantes e desconsiderar alterações irrelevantes. Uma imagem, por exemplo, vem em forma de um array de pixels e as features aprendidas na primeira camada geralmente detectam a presença ou ausência de bordas em certas orientações e localizações da imagem. A segunda camada tipicamente detecta padrões, pela detecção de certos padrões de bordas sem considerar pequenas variações na localização. Uma camada seguinte pode reconhecer partes de objetos familiares a partir dos padrões reconhecidos na camada anteior e camadas seguintes podem reconhecer objetos a partir das partes detectadas.

O aspecto chave do deep learning é que essas camadas de features *não são projetadas por humanos*. Elas são aprendidas a partir dos dados usando um procedimento de aprendizagem geral.

O deep learning tem feito vários avanços em problemas que desafiaram por anos a comunidade de inteligência artificial. E os autores acreditam que o deep learning terá ainda vários outros sucessos no futuro.

## Supervised learning (aprendizado supervisionado)

A forma mais comum de machine learning (deep ou não) é o aprendizado supervisionado. Coleta-se um grande conjunto de dados classificados e, durante o treino, apresenta-se à máquina os dados com as suas classificações. A ideia é que a máquina dê o maior score para a classe desejada. Nós computamos uma função que mede o erro (ou a distância entre a classificação dada pela máquina e o que era esperado). A máquina então ajusta os seus parâmetros internos para reduzir esse erro. Esses parâmetros ajustados são geralmente chamados de "pesos" e são números reais que definem a função input-output. Podem haver centenas de milhões desses parâmetros e centenas de milhões de exemplos para treinar a máquina.

Para ajustar os erros corretamente, o algoritmo de aprendizado computa um vetor gradiente que, para cada peso, indica quanto o erro aumentaria ou diminuiria se o peso aumentasse um pouquinho. O peso então é ajustado na direção oposta a esse vetor.

As pessoas em geral usam um procedimento chamado _stochastic gradient descent_ (SDG), que consiste em mostrar o vetor de input para somente alguns exemplos, computando os outputs e erros e ajustando os pesos de acordo com o resultado. Depois do treino, a performance do sistema é medida em um conjunto de dados diferente chamado _test set_. O _test set_ serve pra testar a generalização da máquina (porque pode ser que ela funcione muito bem para o conjunto de treino, mas *só para ele*).

## Backpropagation to train multilayer architectures


