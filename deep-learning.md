# Deep Learning

- [x] A presença de Machine Learning nas diferentes áreas
- [x] Dificuldade de criar sistemas com representações e extração de features
- [x] _Deep learning_ como um tipo de _representation learning_ (hierarquia, abstração, etc.)
- [ ] Backpropagation
- [ ] CNNs e RNNs

_Machine learning_ está presente em muitos dos sistemas com os quais nós interagimos no nosso dia-a-dia. Os sistemas de busca na internet, o reconhecimento de amigos em fotos nas redes sociais e a interface de voz no celular são exemplos disso. Boa parte desses sistemas fazem uso de um tipo de técnicas que vem sendo chamado de _deep learning_.

Por muito tempo, as técnicas de Machine learning dependiam da identificação de _features_ relevantes nos dados, de modo que para construir um sistema que atuasse em um dado domínio era necessário ter um grande conhecimento a respeito do domínio para determinar quais eram as características relevantes e como elas deveriam ser identificadas nos dados brutos.

Por exemplo, para construir um sistema que analisasse automaticamente os _reviews_ de um filme por meio de processamento de linguagem natural, era necessário primeiramente determinar quais eram as etapas de pre-processamento relevantes para a tarefa, como por exemplo a extração dos radicais das palavras ou a remoção de palavras muito frequentes como "e", "com" e "que". A seguir, seria necessário identificar quais palavras ou frases deveriam funcionar como "características" de um review positivo e quais seriam características de um review negativo.

Uma vez definidos esses diferentes tipos de "características", os dados poderiam então ser *representados* de uma maneira que explicitasse a presença das diferentes características e um classificador _baysiano_ poderia ser usado para determinar se um dado review deveria ser considerado positivo ou negativo.
Uma ideia semelhante pode ser aplicada a diferentes áreas como classificação de imagens, identificação de objetos, reconhecimento de voz, etc.

A construção de sistemas assim requer um trabalho muito cuidadoso e um grande domínio da área em questão para que se possa extrair um conjunto relevante de características e, ao mesmo tempo, desprezar variações insignificantes.

A ideia por trás do Deep Learning é tornar a extração e identificação das características relevantes do dado bruto algo que o sistema aprenda a partir de um grande número de exemplos sem que seja necessário programar explicitamente as _features_ a serem identificadas. Desta forma, _deep learning_ pode ser visto como uma forma de _representation learning_. A substituição da necessidade de especialização e da criação cuidadosa de um sistema que extraia as características dos dados por um sistema que aprenda a fazer isso automaticamente a partir de um número muito grande de exemplos se faz ainda mais interessante em uma época em que se tantos dados são criados e publicados na internet diariamente.

O grande desafio na área de _machine learning_ se torna conseguir dados suficientes para treinar o sistema e construir uma arquitetura que seja capaz de aprender.

A partir dos dados _raw_, cada camada de uma rede de deep learning é capaz de aprender representações cada vez mais abstratas dos dados de modo a ressaltar características que sejam relevantes enquanto despreza variações que não alteram o resultado. Por exemplo, para reconhecer a foto de um cachorro, as camadas mais inferiores da rede aprenderão a identificar bordas; camadas mais superiores irão aprender a identificar, a partir da representação gerada pelas camadas anteriores - que já terão identificado as bordas da imagem -, formas e padrões relevantes, enquanto desprezam pequenas variações de tamanho ou localização; alguma camada mais acima será capaz de, a partir dos padrões e formas identificadas anteriormente, identificar os olhos ou o focinho do cachorro. Estas diferentes representações vão se tornando cada vez mais abstratas, de modo que a camada de output seja capaz de identificar se há ou não um cachorro na imagem.








