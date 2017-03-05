# Uso de Deep Learning para Processamento de Linguagem Natural

* Redes neurais e backpropagation
* LSTM, Deep learning e RNN
* NLP e Representação (word2vec)

## Redes neurais 

* O paradigma simbólico e sua limitação
* A resposta das RNA a essa limitação
* Especificação do modelo básico de uma RNA
* Backpropagation e como o aprendizado ocorre

O paradigma simbólico na inteligência artificial requer que o conhecimento 
especializado seja especificado e programado para a resolução de uma 
determinada tarefa. Neste paradigma, é necessário um trabalho de engenharia 
do domínio para especificar esse conhecimento e programá-lo. Uma clara 
limitação desse paradigma é o fato de que, em muitos domínios, não existe 
uma definição que torne possível a especificação de um algoritmo para o 
problema que se queira resolver. 

O uso de redes neurais artificiais são uma possível solução para essa 
limitação, uma vez que não é necessário especificar os passos para a 
realização de uma tarefa. A ideia é que o sistema "aprenda" a resolver 
o problema dado a partir de um grande número de exemplos de 
entrada com suas respectivas saídas esperadas. Após a repetida exposição
do sistema a diferentes exemplos de entrada com a saída esperada, o
sistema se torna capaz de "prever" qual seria a saída esperada para um 
exemplo de entrada inédito.

O surgimento das Redes Neurais Artificiais (RNA) foi, de certa forma, inspirado
pelo funcionamento do Sistema Nervoso Central (SNC). No cérebro humano, os 
neurônios funcionam de modo integrado, de maneira que a ativação de um 
neurônio afeta os diversos neurônios aos quais ele está ligado. Similarmente,
nas RNA, existem unidades computacionais relativamente simples que são ligadas
umas as outras. Assim como no SNC, a atividade de uma dessas unidades 
influencia a atividades das unidades às quais ela está ligada.

Basicamente, um modelo de rede neural artificial pode ser representado como
um grafo que tem suas unidades (neurônios) distribuídas em camadas. 
A primeira camada, de input recebe os respectivos estímulos a 
partir dos dados de entrada. Os neurônios dessa camada exercem
influência nos neurônios da camada seguinte até que se chegue à última
camada - output. A influência de um neurônio sobre o próximo é modulada por meio 
de pesos, que são valores relacionados a cada aresta no grafo. Para calcular
o valor que um neurônio passará aos neurônios da camada seguinte dois conceitos
são importantes: o _bias_ e a _função de ativação_. 
O _bias_ é o valor que será subtraído do somatório de ativações dos neurônios
que estão ligados a ele e está relacionado ao limiar de ativação dos neurônios
no SNC. A função de ativação é a transformação que uma dada unidade fará com 
o valor resultante do somatório dos valores das ativações dos neurônios da
camada anterior multiplicados com os respectivos pesos e subtraído do _bias_.

O processo de aprendizagem de uma rede pode ser entendido como a sucessiva 
atualização dos pesos de modo que se chegue aos valores que permitam prever
melhor o output para um input inédito. Esse processo ocorre por meio da
iteração sobre um conjunto de dados de treino. Os pesos são inicializados
aleatóriamente (entre outras maneiras possíveis) e o primeiro dado é "inputado"
na rede, que passa os estímulos de uma camada à outra até o output. O output 
gerado pela rede é então comparado ao resultado esperado por meio de uma função 
de custo e com base nessa função os pesos são atualizados para a próxima iteração
até que se obtenha a configuração de pesos ótima.

A atualização dos pesos da rede, que é o centro do processo de aprendizagem, se 
dá por meio do algoritmo de _backpropagation_. Esse algoritmo parte da função de
custo e atualiza cada peso com base no gradiente da função de custo, de modo a
minimizar o erro para a próxima iteração. O quanto cada peso será atualizado é
controlado pelo _learning rate_.

## Deep Learning, RNN e LSTM

_Deep Learning_ é o nome dado a uma rede neural que contenha "muitas" camadas.
Embora o conceito de uma rede com várias camadas já tivesse sido considerado desde 
a década de 1980, o uso de _backpropagation_ com esse tipo de rede só se tornou 
possível na prática a partir da década de 2000 com o surgimento das GPUs.

As redes neurais recorrentes são uma arquitetura importante para o processamento de
dados sequenciais, como audio ou linguagem natural. Nesse tipo de rede, há um loop da
saída da rede para a entrada na análise do próximo item da sequência, permitindo que
informações dos itens anteriores possam influenciar os itens seguintes. As RNNs 
já existem há muito tempo (referência), mas o seu sucesso nos trabalhos mais recentes 
está geralmente associado às LSTMs.

<limitações das RNNs; como as LSTMs ajudam> 















