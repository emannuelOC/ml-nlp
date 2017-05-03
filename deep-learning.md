# Deep Learning

- [x] A presença de Machine Learning nas diferentes áreas
- [x] Dificuldade de criar sistemas com representações e extração de features
- [ ] _Deep learning_ como um tipo de _representation learning_ (hierarquia, abstração, etc.)
- [ ] Backpropagation

_Machine learning_ está presente em muitos dos sistemas com os quais nós interagimos no nosso dia-a-dia. Os sistemas de busca na internet, o reconhecimento de amigos em fotos nas redes sociais e a interface de voz no celular são exemplos disso. Boa parte desses sistemas fazem uso de um tipo de técnicas que vem sendo chamado de _deep learning_.

Por muito tempo, as técnicas de Machine learning dependiam da identificação de _features_ relevantes nos dados, de modo que para construir um sistema que atuasse em um dado domínio era necessário ter um grande conhecimento a respeito do domínio para determinar quais eram as características relevantes e como elas deveriam ser identificadas nos dados brutos.

Por exemplo, para construir um sistema que analisasse automaticamente os _reviews_ de um filme por meio de processamento de linguagem natural, era necessário primeiramente determinar quais eram as etapas de pre-processamento relevantes para a tarefa, como por exemplo a extração dos radicais das palavras ou a remoção de palavras muito frequentes como "e", "com" e "que". A seguir, seria necessário identificar quais palavras ou frases deveriam funcionar como "características" de um review positivo e quais seriam características de um review negativo.

Uma vez definidos esses diferentes tipos de "características", os dados poderiam então ser *representados* de uma maneira que explicitasse a presença das diferentes características e um classificador _baysiano_ poderia ser usado para determinar se um dado review deveria ser considerado positivo ou negativo.
Uma ideia semelhante pode ser aplicada a diferentes áreas como classificação de imagens, identificação de objetos, reconhecimento de voz, etc.

A construção de sistemas assim requer um trabalho muito cuidadoso e um grande domínio da área em questão para que se possa extrair um conjunto relevante de características e, ao mesmo tempo, desprezar variações insignificantes.