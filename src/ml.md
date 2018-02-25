# Aprendizado de Máquina

O Aprendizado de Máquina é um subconjunto da Ciência de Dados em que algorítmos de computador são usados para descobrir, de forma autônoma, estruturas presentes em dados e informações através da implementação de sofisticadas técnicas estatísticas de aprendizado.

Enquanto a Ciência de Dados está intrinsecamente ligada à solução de problemas do mundo real através da coleta, limpeza, formatação e compreensão de dados; o Aprendizado de Máquina se apresenta como uma área do conhecimento que transcende a própria ciência de dados, sendo tipicamente descrita como a "ciência cujo objetivo é usar dados existentes para desenvolver modelos que podemos utilizar para predizer várias características de dados futuros" ([TODO] MLFS)

Podemos assim tratar a Ciência de Dados como um grande guarda-chuvas que compreende um conjunto de disciplinas incluindo _Big Data_, Inteligência Artificial, Mineração de Dados e também o Aprendizado de Máquina, configurando uma vasta área de estudos que hoje permite o computador interagir com seres humanos, conduzir um carro, identificar pessoas na multidão e realizar, com uma eficiência extraordinária, diversas outras atividades antes ditas humanas e até mesmo sobre-humanas.

Essa área do conhecimento existiu virtualmente por praticamente duas décadas <---, porém, apenas após o advendo de uma nova geração de computadores com altas taxas de processamento e armazenamento, tornou-se praticamente viável e então, impulsionada por um mundo conectado à _Internet_, que proporcionou uma capacidade inimaginável de coleta massiva de informações, passou a ser largamente introduzida nos nossos empreendimentos e em nosso dia a dia.

## Classificação dos problemas

Quando falamos de Aprendizado de Máquina estamos englobando centenas de algorítmos que utilizamos para treinar e aprimorar nossos modelos. Entre os algoritmos podemos destacar classificadores bayesianos, análise associativa e redes neurais. Esses algoritmos podem ser divididos em três diferentes categorias básicas: supervisinados, não supervisionados e por reforço. Nesta seção nos aprofundaremos nos dois primeiros tipos.

### Aprendizado supervisionado

Esses algoritmos são guiados por padrões pré-existentes e características já conhecidas. O aprendizado supervisionado se inicia com a apresentação de dados para a máquina já com seus respectivos corretos valores de saída. Então, a partir desse conjunto de informação os algoritmos são capases de decifrar padrões e desenvolver modelos capazes de comparar os resultados obtidos para classificar novos dados.

Para melhor explicar o funcionamento de um algoritmo supervisionado, podemos seguir o exemplo clássico da classificação de _e-mails_. Neste temos um problema em separar as mensagens recebidas em duas categorias _spam_ e _non-spam_. Partimos do pressuposto que temos uma série de _e-mails_ que se enquadram nesses dois conjuntos, sendo cada um deles rotulado respectivamente com o identificador de sua categoria. Processamos esse conjunto de dados em determinado algoritmo que pode, dessa forma, compreender as características dos dois conjuntos, se tornando capaz de discernir a qual deles pertence um novo email fornecido e não identificado baseando-se na comparação com os resultados previamente obtidos.

O grande desafio a ser vencido quando se faz uso desse tipo de algoritmo é possuir um conjunto de dados rotulados grandes o suficiente para representar todas as possíveis variações. Esse conjunto de dados deve além de tudo ser o mais relevante possível, isto é, apresentar as características dos padrões com maior fidelidade e de maneira não viciada ([TODO] MLFXB).

Regressão linear, _k-nearest neighbors_ e árvores de decisão são exemplos de algoritmos supervisionados.

#### _Overfitting_ e _Underfitting_

Alguns perigos são bem conhecidos quando falamos de Aprendizado de Máquina, dois deles, _overfitting_ e _underfitting_, estão intrinsecamente relacionados a quantidade de informação que nós decidimos analisar em um conjunto de dados, assim como o método escolhido para realizar essa análise.

Podemos descrever um caso de _overfitting_ quando produzimos um modelo que se adequa bem ao conjunto de dados que usamos para o treinamento, entretanto está tão rigidamente vinculado a esse conjunto de dados que não é capaz de se generalizar de modo que esteja ápto a realizar predições coerentes para novos dados de entrada. Opostamente, temos os casos de _underfitting_, que podem ser observados quando o modelo que construímos não se adequa bem ao conjunto de dados de treinamento e consequentemente não é confiável para realizar predições.

![Overfitting e Underfitting](images/machine_learning/overfitting_underfitting.png)

A abordagem fundamental para garantir que nosso modelo não está ou complexo ou simples demais é utilizar diferentes dados para treinar e para testar nossos modelos, garantindo. Uma possível forma para aplicar esse conceito é dividir o conjunto de dados disponíveis em dois grupos; um deles será direcinado ao treinamento, o outro ao teste. Assim podemos aferir a performance do modelo. Uma pratica comum nessa abordagem é separar dois terços dos dados para o treinamento.

Segundo ([TODO] MLFS) um grande desafio de se encontrar um modelo que melhor se adequa ao conjunto de dados selecionado é garantir qual deles é realmente o superior a partir da análise dos resultados para o conjunto de teste. Para o autor, essa aferição seria uma espécie de meta-treinamento que faria com que o próprio conjunto de teste se tornasse um treinamento secundário incapaz de dizer qual dos modelos seria o melhor para a ocasião. Logo, nos casos em que utilizamos um conjunto de dados para treinar, testar e selecionar em um grupo de possíveis modelos, devemos dividir os dados disponíveis em três conjuntos: o conjunto de treinamento para a construção dos modelos, o conjunto de validação para escolher entre os modelos e, por fim, um conjunto de teste para julgar o modelo final. É claro que isso apenas irá mitigar o problema, já que podemos extender o mesmo argumento sobre meta-treinamentos para quantas forem as etapas de teste.

#### Validação de um modelo

Quando falamos de acurácia em Aprendizado de Máquina nos referimos ao grau de exatidão, ou seja, ao grau de conformidade de um valor medido ou calculado em relação à sua definição, demonstrado por um modelo específico. Podemos então criar a falsa impressão de que essa seria uma boa forma de avaliar a corretude e aplicabilidade do nosso modelo, entretanto, tipicamente não podemos utilizar essa medida para avaliar se um modelo é adequado o suficiente ([TODO] MLFS).

Retomando o exemplo clássico do modelo binário para identificação de _spams_, cada email rotulado se enquadra em uma das seguintes categorias:

| | |
|---|---|
|Verdadeiro Positivo| _e-mail_ é um _spam_ e foi classificado como _spam_|
|Falso Positivo| _e-mail_ não é um _spam_ e foi classificado como _spam_|
|Verdadeiro Negativo| _email_ não é um _spam_ e não foi classificado como _spam_|
|Falso Negativo| _email_ é um _spam_ e foi classificado como _spam_ |
: Exemplo de categorias em um modelo preditivo binário

Generalizando, para modelos preditivos binários podemos definir a seguinte tabela:

| | 1 | 0 |
|:---:|:---:|:---:|
| **predição 1** | Verdadeiro Positivo | Falso Positivo |
| **predição 0** | Falso Negativo | Verdadeiro Negativo |
: Generalização de um modelo preditivo binário

Assim temos a acurácia $a$ definida como

$$a=(p_{v}+n_{v})/(p_{v}+n_{v}+p_{f}+n_{f}),$$

em que $p_{v}$ são as predições verdadeiras positivas, $p_{f}$ as falsas positivas, $n_{v}$ as verdadeiras negativas e $n_{f}$ as falsas negativas.

Voltando ao caso hipotético dos _spams_ para o qual foram encontrados os seguintes valores:

| | _spam_ | _non-spam_ |
|:---:|:---:|:---:|
| **predição _spam_** | 100 | 5.000 |
| **predição _non-spam_** | 10.000 | 100.000 |

O valor referente a acurácia nesse caso seria de aproximadamente 0.87, levando a crer que esse poderia ser um modelo eficiente para muitas aplicações. Entretanto, devemos recorrer a outros métodos matemáticos para saber se este realmente poderia ser uma escolha viável. A combinação entre precisão e revocação, segundo ([TODO] MLFS) seria uma boa escolha. Definimos precisão $p$ e revocação (do ingês _recall_) $r$ como

$$p=p_{v}/(p_{v}+p_{f}),$$
$$r=p_{v}/(p_{v}+n_{f}).$$

Esses valores nos darão respectivamente a compreensão percentual sobre quantos verdadeiros positivos obtivemos no universo de predições positivas e quantos verdadeiros positivos foram preditos no universo de todos os realmente positivos. Para nosso caso hipotético, encontramos para a precisão um valor de aproximadamente 0.02, enquanto para a revocação temos 0.01. Claramente este modelo preditivo não pode ser considerado adequado.

Podemos inferir que "um modelo que prediz sim até quando não tem muita confiança no resultado terá provavelmente uma alta revocação mas uma baixa precisão; um modelo que prediz sim apenas para quando tem extrema confiança no resultado provavelmente terá uma baixa revocação e uma boa precisão.

### Aprendizado não supervisionado

Quando estamos lidando com um problema no qual não é possível atribuir rótulos para nossas entidades, não é possível utilizar a abordagem supervisionada descrita acima. Nos casos em que nossos dados não possuem padrões conhecidos que podem servir como base para nossas análises, utilizamos então algoritmos não supervisionados. Esses algoritmos são capazes de identificar padrões escondidos no conjunto de dados, portanto não necessitam de dados rotulados.

A ferramenta de participação social Pol.is utiliza o algoritmo _k-means_ para agrupar pessoas de acordo com seus respectivos votos em determinadas questões propostas pelos próprios usuários. Já que os padrões de agrupamento não são conhecidos, podemos afirmar que os usuários de um mesmo grupo possuem caracteristicas semelhantes, entretanto essas caracteristicas continuam ocultas para nós, o que pode ser uma grande desvantagem dependendo do tipo de informação que se deseja obter com a analise desses grupos. Nesse caso, a prática nos diz que sabemos apenas que determinados usuários formam um grupo, o porquê continua sendo um tanto obscuro.

Algoritmos não supervisionados incluem analise de redes sociais, análise associativa e _k-means clustering_. Este último será um objeto importante para nosso estudo de caso, o Empurrando Juntos.

### Extração de _features_

## Visualização

Na maioria das aplicações do mundo real, o conjunto de dados precisa passar por algum tipo de tratamento antes de ser analisado ([TODO] AMATRIAN). Por exemplo, em casos onde a medida de similaridade é sensível a diferenças de magnitudes e escalas das variáveis de entrada, como a distância euclideana, pode ser necessário uma normalização de seus valores. Em outras situações nas quais os atributos dos objetos são de diferentes tipos, como categóricos e numéricos, há a necessidade de convertê-los para a mesma escala, ou buscar uma medida de similaridade que consiga tratar ambos os tipos de entrada.

Além de simples conversões de escalas e normalizações, pode ser adequado aplicar transformações mais complexas no conjunto de dados, como a redução da dimensionalidade. Para esta tarefa, existem várias técnicas, de complexidade linear e não linear, que podem gerar resultados diferentes de acordo com as características dos dados. No geral uma das técnicas mais utilizadas para esta transformação é a Análise dos Componentes Principais (PCA).

### PCA

#### Definição

PCA é um método estatístico que permite representar em termos de outros eixos, com dimensões reduzidas. Esses eixos servem de base para uma projeção dos originais, ou seja, perde-se informação. Porém, essa projeção pode ainda representar suficientemente a quantidade de informação necessária para a identificação de padrões e agrupamentos nos dados.

Para encontrar os eixos ou componentes principais, calcula-se os autovetores e autovalores da matriz de covariância dos dados, resultando em um autovetor para cada variável existente. Os respectivos autovalores descrevem a variância relativa ao conjunto total. Pode-se então ignorar os componentes com menor contribuição para a variância para obter os dados projetados com dimensões reduzidas.

### TSNE

## Clusterização de dados

### Definição

[TODO] Substituir essa primeira parte por uma ligação ao EJ
Sistemas de Recomendação e recuperação de Informações comumente utilizam tecnicas de clusterização em atividades de Mineração de Dados para reconhecer e extrair padrões em um conjunto de dados.

Nesse tipo de análise, o objetivo é organizar objetos em grupos ou clusters, de forma que os objetos de um mesmo cluster possuam uma semelhança significativa entre si por algum tipo de critério estabelecido ([TODO] GAN). Imaginando então alguns objetos sobre a mesa, podemos querer agrupá-los por seu tamanho, cor forma, ou ainda por uma combinação de todas as três características. É possível realizar essa separação apenas observando padrões sobre as qualidades dos objetos, não sendo necessario nenhum treinamento anterior para identificar os diferentes padrões. Essa tecnica foi descrita na seção ([TODO] seção Aprendizado não Supervisionado).

O agrupamento de objetos e determinado em função de uma medida de distância. Desta forma, o objetivo de um algoritmo de clusterização é encontrar e classificar itens similares de maneira que a distância _intra-cluster_ (soma das distâncias dos objetos de um _cluster_ até seu centro) seja a menor possível, e a distância entre diferentes _clusters_ seja maximizada ([TODO] AMATRIAIN).

### Representação dos dados

Para que seja possível analisar um certo agrupamento de dados é necessário identificar quais informações podem ser utilizadas para representar uma abstração prática dos objetos a serem agrupados. É preciso encontrar então um conjunto de atributos que descrevem os itens para que seja possível calcular o grau de semelhança entre os elementos. Esses atributos, por sua vez, podem ser escritos em forma numérica, categórica, binária e uma variedade de outros tipos. Como exemplo, podemos representar pessoas em vetores compostos pelo valor numério de seu ano de nascimento e um valor binário, 0 ou 1, para masculino ou feminino.

$$
  \begin{pmatrix}
    pessoa_{1} \\
    pessoa_{2} \\
    \vdots \\
    pessoa_{n}
  \end{pmatrix}
  =
  \begin{pmatrix}
    1997 & 1 \\
    1943 & 0 \\
    \vdots  & \vdots \\
    ano_{n} & sexo_{n}
  \end{pmatrix}
$$

Vejamos também que a representação de atributos para os objetos podem existir em diferentes formatos e escalas.

|Objeto|Cor|
|:---:|:---:|
|A|Azul|
|B|Amarelo|
|C|Vermelho|
:Representação nominal sobre a cor

|Objeto|Azul|Amarelo|Vermelho|
|---|---|---|---|
|A|1|0|0|
|B|0|1|0|
|C|0|0|1|
:Representação categórica para o atributo cor

|Objeto|Cor(THz)|
|---|---|
|A|606|
|B|508|
|C|400|
:Representação numérica da cor em frequência (THz)

As tabelas ([TODO] referenciar as três tabelas acima) mostram os memos dados representados de formas diferentes, o formato depende basicamente da fonte de dados, de como eles forma armazenados. Para as diversas representações existe um tipo de função de distância compatível. É possível, no entanto, utilizar qualquer uma das representações.

### k-means_
### Outros
