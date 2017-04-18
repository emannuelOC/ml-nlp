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

Desde o começo do reconhecimento de padrões, a ideia era substituir as features "feitas à mão" por redes treináveis, mas a solução não foi amplamente entendida até o meio dos anos 1980. As arquiteturas com múltiplas camadas pode ser treinada com gradiente descendente estocástico usando backpropagation.

O procedimento de backpropagation para calcular o gradiente de uma função objetivo em relação aos pesos de uma pilha de módulos é a regra da cadeia para derivadas aplicada na prática. A ideia é que a derivada (ou gradiente) da função objetivo com relação ao input de um módulo pode ser computada de trás pra frente a partir do gradiente com relação ao output daquele módulo (ou o input do módulo seguinte). A equação de backpropagation pode ser aplicada repetidamente por todos os módulos, começando pelo output da rede até o input.

Várias aplicações de deep learning usam redes neurais _feed forward_, que aprendem a mapear um input de tamanho fixo a um output de tamanho fixo. Para ir de uma camada para a próxima, um conjunto de unidades computa uma soma ponderada dos seus inputs recebidos da camada anterior através de uma função não linear (a mais popular é a ReLU: `f(x) = 0, se x < 0; f(x) = x se x >= 0`). Outras funções também utilizadas são a `tanh` (tangente hiperbólica) e a função sigmóide (`f(x) = 1/(1 + exp(-x))`).

Unidades que não são nem input nem output são chamadas de _hidden units_ (unidades escondidas).

No fim dos anos 1990, as redes neurais e backpropagation foram esquecidos pela comunidade de visão computacional e reconhecimento de voz. Pensava-se que o gradiente descendente ficaria preso em _local minima_ (pontos da função com derivada zero mas que não seriam o mínimo global). Na prática, mínimos locais raramente são um problema para as redes neurais.

O interesse por redes neurais "profundas" (deep) cresceu novamente em 2006, quando um grupo no Canadá introduziu aprendizado não supervisionado no processo de pré-treino para criar detectores de features a partir de dados sem labels. Isso funcionou muito bem para reconhecer caracteres escritos à mão e para detectar pedestres.

A primeira grande aplicação desse método foi para reconhecimento de voz e só foi possível pelo uso de GPUs. Em 2012, versões dessa rede estavam sendo desenvolvidas por vários do grande grupos de reconhecimento de voz e já estava em uso em telefones Android.

## Convolutional neural networks
