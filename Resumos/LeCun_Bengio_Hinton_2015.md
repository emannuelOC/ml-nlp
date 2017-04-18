# Resumão - LeCun, Bengio, Hinton (2015)

## Abastract:

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

## Supervised learning

