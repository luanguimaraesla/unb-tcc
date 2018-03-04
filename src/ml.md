# Aprendizado de Máquina {#sec:ml}

O Aprendizado de Máquina é um subconjunto da Ciência de Dados em que algorítmos de computador são usados para descobrir, de forma autônoma, estruturas presentes em dados e informações através da implementação de sofisticadas técnicas estatísticas de aprendizado. Os métodos estudados nesse Capítulo são de extrema importância para o desenvolvimento do algoritmo de agrupamento do Empurrando Juntos.

Enquanto a Ciência de Dados está intrinsecamente ligada à solução de problemas do mundo real através da coleta, limpeza, formatação e compreensão de dados; o Aprendizado de Máquina se apresenta como uma área do conhecimento que transcende a própria Ciência de Dados, sendo tipicamente descrita como a "ciência cujo objetivo é usar dados existentes para desenvolver modelos que podemos utilizar para predizer várias características de dados futuros" [@dsfs15].

Podemos assim tratar a Ciência de Dados como um grande guarda-chuvas que compreende um conjunto de disciplinas incluindo _Big Data_, Inteligência Artificial, Mineração de Dados e também o Aprendizado de Máquina, configurando uma vasta área de estudos que hoje permite o computador interagir com seres humanos, conduzir um carro, identificar pessoas na multidão e inferir a existência de grupos sociais à partir do comportamento dos indivíduos. Isso é feito com uma eficiência extraordinária, permitindo as máquinas realizarem diversas outras atividades antes ditas humanas e até mesmo sobre-humanas.

A base matemática para grande parte dos algoritmos vem sendo desenvolvida há muitos anos, passando por períodos em que as possibilidades computacionais ainda eram completamente primitivas. Contudo, após o advendo de uma nova geração de computadores com altas taxas de processamento e armazenamento, o Aprendizado de Máquina tornou-se praticamente viável e então, impulsionado por um mundo conectado à _Internet_, que proporcionou uma capacidade inimaginável de coleta massiva de informações, passou a ser largamente introduzido nos nossos empreendimentos e em nosso dia a dia.

## Classificação dos problemas

Quando falamos de Aprendizado de Máquina estamos englobando centenas de algorítmos que utilizamos para treinar e aprimorar nossos modelos. Entre os algoritmos podemos destacar classificadores bayesianos, análise associativa e redes neurais. Esses algoritmos podem ser divididos em três diferentes categorias básicas: supervisinados, não supervisionados e por reforço.

Considere uma máquina que receba uma sequência de entradas $x_{1}, x_{2}, x_{3}, ..., x_{t}$, onde $x_{t}$ é a entrada fornecida no tempo $t$. Essas estradas são dados que podem ser, por exemplo, uma representação do mundo real como _pixels_ de uma imagem, pontos discretos em uma onda mecânica ou votos em uma conversa _online_. A maneira como iremos receber esses dados e projetar nossos algoritmos para lidar com eles define o tipo de aprendizado que melhor se adapta ao nosso problema.

O aprendizado supervisionado recebe uma sequência de entradas $y_{1}, y_{2}, ..., y_{n}$, suas respectivas saídas $z_{y_{1}}, z_{y_{2}}, ..., z_{y_{n}}$ e tem como objetivo produzir uma saída correta para um novo valor $y$ fornecido. O aprendizado por reforço interage com o ambiente produzindo ações $a_{1}, a_{2}, ..., a_{n}$, que retornam algum tipo de resultados escalares $r_{y_{1}}, r_{y_{2}}, ..., r_{y_{n}}$, que recompensam ou não cada ação realizada. Esse resultado é utilizado para aprimorar o algoritmo de forma que recompensas por ações futuras sejam maximizadas. Já o aprendizado não supervisionado recebe uma sequência de entrada $x_{1}, x_{2}, ..., x_{3}$, porém não recebe nenhuma informação adicional sobre esses dados. Então o algoritmo é capaz de identificar padrões nesses dados e utilizar essa informação para agrupá-los ou predizer valores para dados futuros [@zgh04].

Levando em consideração a natureza do problema estabelecido para o desenvolvimento de uma plataforma de participação social baseada no agrupamento de usuários por meio da análise de seus votos, essa seção apresenta um estudo aprofundado nas categorias de algoritmos supervisionados e não supervisionados.

### Aprendizado supervisionado

O aprendizado supervisionado é uma categoria básica de algoritmos que implementam um método guiado por padrões pré-existentes e características já conhecidas para a inferência automatizada de valores futuros. O fluxo genérico desses algoritmos consiste primeiramente na apresentação de um conjunto de dados para a máquina já com seus respectivos corretos valores de saída. A partir desse conjunto, os algoritmos decifram padrões e desenvolvem modelos de aprendizagem capazes de comparar os resultados obtidos nessa fase inicial de treinamento para classificar novos dados.

Para melhor explicar o funcionamento de um algoritmo supervisionado, podemos seguir o exemplo clássico da classificação de _e-mails_. Nesta situação, temos um problema em separar as mensagens recebidas em duas categorias _spam_ e _non-spam_. Partimos do pressuposto que já possuímos uma série de _e-mails_ que se enquadram nesses dois conjuntos, sendo cada um deles rotulado respectivamente com o identificador de sua categoria. Processamos esse conjunto de dados em determinado algoritmo que pode, dessa forma, compreender as características dos dois conjuntos, se tornando capaz de discernir a qual deles pertence um novo _e-mail_ fornecido e não identificado baseando-se na comparação com os resultados previamente obtidos.

O grande desafio a ser vencido quando se faz uso desse tipo de algoritmo é possuir inicialmente um conjunto de dados rotulados grandes o suficiente para representar todas as possíveis variações. Esse conjunto de dados deve, além de tudo, ser o mais relevante possível, isto é, apresentar as características dos padrões com maior fidelidade e de maneira não viciada [@dsfs15].

Regressão linear, _k-nearest neighbors_ e árvores de decisão são exemplos de algoritmos supervisionados.

#### _Overfitting_ e _Underfitting_

Alguns perigos são bem conhecidos quando falamos de Aprendizado de Máquina, dois deles, _overfitting_ e _underfitting_, estão intrinsecamente relacionados a quantidade de informação que nós decidimos analisar em um conjunto de dados, assim como o método escolhido para realizar essa análise.

Podemos descrever um caso de _overfitting_ quando produzimos um modelo que se adequa bem ao conjunto de dados que usamos para o treinamento, entretanto está tão rigidamente vinculado a esse conjunto de dados que não é capaz de se generalizar de modo que esteja ápto a realizar predições coerentes para novos dados de entrada. Opostamente, temos os casos de _underfitting_, que podem ser observados quando o modelo que construímos não se adequa bem ao conjunto de dados de treinamento e consequentemente não é confiável para realizar predições.

![Overfitting e Underfitting](images/machine_learning/overfitting_underfitting.png)

A abordagem fundamental para garantir que nosso modelo não está ou complexo ou simples demais é utilizar diferentes dados para treinar e para testar nossos modelos, garantindo. Uma possível forma para aplicar esse conceito é dividir o conjunto de dados disponíveis em dois grupos; um deles será direcinado ao treinamento, o outro ao teste. Assim podemos aferir a performance do modelo. Uma pratica comum nessa abordagem é separar dois terços dos dados para o treinamento.

Um grande desafio de se encontrar um modelo que melhor se adequa ao conjunto de dados selecionado é garantir qual deles é realmente o superior a partir da análise dos resultados para o conjunto de teste. Para o autor, essa aferição seria uma espécie de meta-treinamento que faria com que o próprio conjunto de teste se tornasse um treinamento secundário incapaz de dizer qual dos modelos seria o melhor para a ocasião [@dsfs15] . Logo, nos casos em que utilizamos um conjunto de dados para treinar, testar e selecionar em um grupo de possíveis modelos, devemos dividir os dados disponíveis em três conjuntos: o conjunto de treinamento para a construção dos modelos, o conjunto de validação para escolher entre os modelos e, por fim, um conjunto de teste para julgar o modelo final. É claro que isso apenas irá mitigar o problema, já que podemos extender o mesmo argumento sobre meta-treinamentos para quantas forem as etapas de teste.

#### Validação de um modelo

Quando falamos de acurácia em Aprendizado de Máquina nos referimos ao grau de exatidão, ou seja, ao grau de conformidade de um valor medido ou calculado em relação à sua definição, demonstrado por um modelo específico. Podemos então criar a falsa impressão de que essa seria uma boa forma de avaliar a corretude e aplicabilidade do nosso modelo, entretanto, tipicamente não podemos utilizar essa medida para avaliar se um modelo é adequado o suficiente [@dsfs15].

Retomando o exemplo clássico do modelo binário para identificação de _spams_, cada _e-mail_ rotulado se enquadra em uma das seguintes categorias:

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

$$a=(p_{v}+n_{v})/(p_{v}+n_{v}+p_{f}+n_{f}),$$ {#eq:acuracia}

em que $p_{v}$ são as predições verdadeiras positivas, $p_{f}$ as falsas positivas, $n_{v}$ as verdadeiras negativas e $n_{f}$ as falsas negativas.

Considere um modelo de aprendizado hipotético para detecção de _spams_ para o qual foram encontrados os seguintes valores:

| | _spam_ | _non-spam_ |
|:---:|:---:|:---:|
| **predição _spam_** | 100 | 5.000 |
| **predição _non-spam_** | 10.000 | 100.000 |

O valor referente à acurácia, nesse caso, seria de aproximadamente 0.87, levando a crer que esse poderia ser um modelo eficiente para muitas aplicações, já que quanto mais próximo de 1, maior o grau de exatidão obtido. Entretanto, devemos recorrer a outros métodos matemáticos para saber se este realmente poderia ser uma escolha viável. A combinação entre precisão e revocação pode ser utilizada para melhor garantir a viabilidade de um modelo [@dsfs15]. Definimos precisão $p$ e revocação (do ingês _recall_) $r$ como

$$p=p_{v}/(p_{v}+p_{f}),$$ {#eq:precisao}
$$r=p_{v}/(p_{v}+n_{f}).$$ {#eq:revocacao}

Esses valores nos darão respectivamente a compreensão percentual sobre quantos verdadeiros positivos obtivemos no universo de predições positivas e quantos verdadeiros positivos foram preditos no universo de todos os realmente positivos. Para nosso caso hipotético, encontramos para a precisão um valor de aproximadamente 0.02, enquanto para a revocação temos 0.01. Claramente este modelo preditivo não pode ser considerado adequado.

Podemos inferir que

> _"um modelo que prediz sim até quando não tem muita confiança no resultado terá provavelmente uma alta revocação mas uma baixa precisão; um modelo que prediz sim apenas para quando tem extrema confiança no resultado provavelmente terá uma baixa revocação e uma boa precisão"_ [@dsfs15].

### Aprendizado não supervisionado

Quando estamos lidando com um problema no qual não se obtém previamente nem rótulos para nossas entidades, nem informações adicionais do ambiente acerca delas, nos referimos a uma situação de aprendizado não supervisionado. Isso quer dizer que nossos dados não possuem padrões conhecidos que serviriam como base para nossas análises. Mesmo assim podemos desenvolver um modelo formal de aprendizado baseado na noção de que o objetivo da máquina é criar representações dos dados de entrada que podem ser utilizadas para tomada de decisões, predição de dados futuros, etc.

A ciência por trás dessa classe de algoritmos pode ser tratada em termos da procura por um modelo probabilistico dos dados. Isso significa que, até quando não possuímos um conjunto de dados de treinamento, podemos estimar um modelo que representa a distribuição de probabilidade para um novo dado de entrada $x_{t}$, dado um conjunto de entradas $x_{1}, x_{2}, ..., x_{t-1}$. Temos assim um modelo probabilístico $P(x_{t}|x_{1}, x_{2}, ..., x_{t-1})$. Para casos mais simples onde não importa a ordem dos dados de entrada, podemos definir todos os dados independentemente e identicamente em alguma distribuição $P(x)^2$ [@zgh04].

Considere um exemplo em que $x$ representa o padrão de comportamento de pessoas em uma conversa _online_. $P(x)$ é construído a partir dos dados coletados de uma pessoa da dessa conversa. A probabilidade do comportamento de outra pessoa pode então ser validada por esse modelo. Assim, se o valor obtido é muito baixo, podemos concluir que ou essas duas pessoas possuem padrões de comportamento muito diferentes ou nosso modelo não é suficientemente bom para inferir essa informação. Esse tipo de estratégia é muito utilizado para a detecção de anomalias em um conjunto de dados.

Claro que esse não é o único uso pertinente para os algoritmos de aprendizado não supervisionados. A classificação de dados também é uma área muito explorada. Assumindo $P_{A}(x)$ como um modelo extraído do comportamento de um grupo $A$ de pessoas em uma conversa _online_, e o modelo $P_{B}(x)$ extraído de um grupo $B$, o algoritmo é capaz de inferir a qual grupo pertence uma nova pessoa $p$, que apresenta determinando comportamento $x_{p}$, comparando as probabilidades relativas a cada grupo, $P_{A}(x_{p})$ e $P_{B}(x_{p})$ [@zgh04].

Além desses usos, podemos citar a aplicação de algoritmos não supervisionados no desenvolvimento de sistemas de comunicação eficientes e compressão de dados, configurando uma ligação importante entre as áreas de aprendizado de máquina, estatística e teoria da informação [@zgh04].

> _"Não há um modelo apropriado para todos os tipos de dados"_ [@zgh04].

Não há um modelo que resolva todos os problemas de aprendizado. O grande desafio é desenvolver um que seja apropriado para um conjunto específico de dados levando em consideração propriedades desejadas. A ferramenta de participação social Pol.is, descrita na [@sec:polis], utiliza um algoritmo não supervisionado para agrupar pessoas de acordo com seus respectivos votos em determinados comentários. Os grupos formados servem como referência para que possamos inferir caracteristicas semelhantes em determinado subconjunto de usuários, entretanto o algoritmo não revela explicitamente quais caracteristicas são essas, que podem ser completamente abstratas, impossibilitando várias análises posteriores sobre esses grupos. Podemos formar o grupo das pessoas mais politicamente incoerentes, por exemplo, o que não teria valor prático algum para a maior parte das pesquisas sociais. Isso pode ser uma grande desvantagem dependendo do tipo de informação que se deseja obter desses grupos.

A seguir, apresentamos o embasamento teórico necessário para aprofundar essa e outras discussões em relação ao agrupamento de usuários com algoritmos não supervisionados. Os tópicos discutidos servirão de base para a formulação da proposta de uma arquitetura de _software_ apropriada para o módulo matemático da plataforma Empurrando Juntos.

### Extração de _features_ {#sec:extracao}

_Feature_ é sinônimo de variável de entrada ou atributo [@fefa06]. Selecionar um bom conjunto de _features_ para representar os objetos de um domínio específivo está entre os diversos desafios que podemos encontrar ao tentar desenvolver um modelo apropriado para nosso problema. Em um exemplo clássico da aferição de um diagnóstico médico, podemos selecionar febre, nível de glicose, dores nas articuções como _features_ capazes de descrever bem, em conjunto, determinados tipos de doença.

A expertise humana, que é sempre necessária para converter dados crus em um conjunto de _features_ úteis, pode ser complementada pelos métodos automáticos de construção de _feature_. Em alguns casos essa etapa está embutida no próprio processo de modelagem, em outros constitui uma etapa anterior chamada pré-processamento de dados [@fefa06]. Essa etapa é importante quando há um conjunto de dados que podem apresentar inconsistências, estarem incompletos, serem ruidosos, etc.

Desta forma, considere $X$ um dado representado em sua forma original, ou seja, não pré-processado, por um vetor de $n$ caracteristicas, $X=[x_{1}, x_{2}, ..., x_{n}]$. Assim, chamamos de $X'$ o vetor $n'$-dimensional que representa $X$ transformado após o pré-processamento, $X'=[x'_{1}, x'_{2}, ..., x'_{n'}]$. Essa transformação pode incluir, entre outras, as seguintes tarefas [@fefa06]:

* **Padronização**: Adequação de escalas, unidades de medidas, tipos de variáveis, etc. entre _features_ que representam uma informações comparáveis entre si.
* **Normalização**: Busca pela obtenção do grau ótimo de organização de uma informação, reduzindo dependências, redundâncias, etc.
* **Extração de _features_ locais**: Utilização de técnicas para incluir informações específicas do domínio entre as _features_.
* **Redução de dimensionalidade**: Quando a dimensionalidade do dado é muito alta, algumas técnicas podem ser aplicadas para reduzir esse espaço dimensional mantendo a maior quantidade de informação possível. A [@sec:pca] descreve um desses métodos, o PCA (Análise de Componentes Principais). As coordenadas dos pontos que representam os dados em um espaço dimensional reduzido podem ser usadas como _features_ ou simplesmente para possibilitar ou facilitar a visualização desses dados.
* **Expansão não-linear**: Aumenta o espaço dimensional do dado com o objetivo de derivar bons resultados em algoritmos que solucionam problemas complexos e que não respondem bem à dimensões reduzidas.

A construção e a seleção de _features_ são atividades complementares que definem o processo de extração de _features_. A seleção tem como objetivo primordial filtrar as _features_ mais relevantes e informativas, mas também pode ter outras motivações como a busca por melhora de performance, economia de recursos físicos, como disco rígido ou memória RAM, entre outras [@fefa06].

A natureza da proposta do Empurrando Juntos faz com que os dados obtidos a partir da participação de usuários em conversas, os votos em comentários, sejam extremamente bem comportados, evitando um grande esforço no processo de construção de _features_. Já o número de _features_ é definido pela quantidade de comentários de uma conversa. Desse modo, mais uma vez buscando garantir os princípios democráticos sobre os quais a plataforma se apresenta, cada comentário possui necessariamente o mesmo valor, impossibilitando a seleção das _features_ mais representativas. Contudo, a redução da dimensionalidade tem um papel crucial para a visualização dos grupos de opinião construídos pelo algoritmo de agrupamento da plataforma, a [@sec:visualizacao] evidencia essa discussão e apresenta possíveis abordagens.

### Visualização {#sec:visualizacao}

As observações sobre o mundo real são, na maioria das vezes, complexas e de difícil abstração quando tentamos representá-las no universo computacional. A análise de um conjunto de dados pode ser impraticável sem que esse conjunto seja antes pré-processado, como foi elucidado na [@sec:extracao]. Por exemplo, em casos onde a medida de similaridade é sensível a diferenças de magnitudes e escalas das variáveis de entrada, como a distância euclideana, é necessário realizar a normalização dos valores [@tall17].

Como veremos no Capítulo [-@sec:ej], o Empurrando Juntos foi contruído com uma forte dependência inicial da ferramenta Pol.is. A popularidade desta ferramenta se deu principalmente pela facilidade com que permite os usuários visualizarem a qual grupo de opinião pertencem. Entretanto, agrupar esses usuários e apresentar esses grupos de uma maneira amigável não é uma tarefa simples.

Cada comentário realizado em uma conversa amplia o espaço dimensional do nosso conjunto de dados. Normalmente temos dezenas de comentários em cada conversa, ou seja, os algoritmos utilizados precisam lidar com o agrupamento de pessoas em dezenas de dimensões distintas e apresentar essa informação ao participante. Uma projeção desses dados em um espaço dimensional reduzido é inevitável se o objetivo é torna-los compreensíveis aos seres humanos, portanto há necessariamente uma perda significante de informação.

Um dos grandes desafios no projeto da plataforma Empurrando Juntos é encontrar o melhor fluxo de processamento e selecionar algoritmos capazes de apresentar os grupos de opinião em um espaço bidimensional mantendo a maior quantidade de informação possível. A maneira como o Pol.is realiza essa tarefa está longe de ser considerada ótima. A redução de dimensionalidade é aplicada antes do agrupamento das pessoas. Esse fluxo pode gerar resultados consideravelmente distorcidos de acordo com as características dos dados originais [@tall17]. As seções a seguir descrevem algumas tecnicas utilizadas para esta transformação e fornecem o embasamento para projetar o fluxo que melhor se adequa a proposta do Empurrando Juntos.

### PCA {#sec:pca}

A Análise dos Componentes Principais (PCA) é provavelmente a mais antiga e mais bem conhecida técnica de análise multivariada. Foi primeiramente introduzida por Pearson em 1901 e desenvolvida independentemente por Hotelling década de 40. Assim como várias outros métodos de análise multivariada, o PCA não foi largamente utilizado até o advento de computadores capazes de processar um número massivo de dados. Contudo, hoje é incluído praticamente em todo pacote estatístico de computação [@joll02].
 
#### Definição

A ideia central por trás dessa técnica é a redução da dimensionalidade de um conjunto de dados que contenha um grande número de variáveis interrelacionadas, enquanto tenta preservar, da melhor maneira possível, a informação contida nesse conjunto.

A quantidade de informação é fortemente relacionada com a variação presente nos dados. Esta pode ser obtida através do cálculo da dispersão, que se refere a medição do espalhamento dos dados [@dsfs15]. A variância é uma medida estatística de dispersão que indica o quão longe em geral um dado $X=[x_{1}, x_{2}, ..., x_{n}]$ se encontra de um valor esperado $E[X]$,

$$
  E[X]=\sum_{i=1}^n x_{i}P(x_{i}),
$$ {#eq:esperado}

em que $P(x_{i})$ representa as probabilidades obtidas para cada elemento de $X$. Assim, se $\mu = E(X)$, definimos a variância $var(X)$ como

$$
  var(X) = E((X - \mu)^2).
$$ {#eq:variancia}

Em termos práticos podemos expressar a [@eq:variancia] como a média do quadrado da distância de cada ponto até a média total dos valores $x_{i}$. Enquanto a variância mede o desvio de uma única variável em relação a média, outra medida, chamada covariância, mede o quanto duas variáveis, $X$ e $Y$, variam em conjunto das suas médias. Define-se covariância $cov(X, Y)$ como

$$
  cov(X,Y)=\sum _{i=1}^{n}\left[\left(x_{i}-\mu _{i}^{x}\right)\left(y_{i}-\mu _{i}^{y}\right)P(x_{i},y_{i})\right],
$$ {#eq:covariancia}

em que $P(x_{i},y_{i})$ é a probabilidade de ocorrer o par $(x_{i},y_{i})$. Então, se o PCA tem como objetivo transformar nosso conjunto de dados em um novo conjunto com menor dimensionalidade, contendo a maior quantidade de informação possível, procura-se o conjunto de variáveis com os maiores valores de variância e covariância possíveis.

#### Implementação

O funcionamento do PCA se baseia primeiramente na extração uma matriz de covariância dos dados. Então, calcula-se os autovetores e autovalores dessa matriz, obtendo um autovetor para cada uma das variáveis. Os respectivos autovalores descrevem a variância ([@eq:variancia]) relativa ao conjunto de dados. Os componentes com menor contribuição para a variância são descartados e assim tem-se o conjunto de dados projetado com dimensões reduzidas.

Considere o conjunto bidimensional de dados $A$ mostrados na [@tbl:dadospca]. Como exemplo, aplicaremos o PCA para obter um novo conjunto unidimensional $A'$ que represente a maior parte da informação contida em $A$. A [@fig:exemplo_01_pca] apresenta o conjunto original sobre o plano cartesiano.

|Identificador|X|Y|
|:---:|:---:|:---:|
|A|8|9|
|B|3|7|
|C|5|4|
|D|7|7|
|E|1|3|
|F|2|1|
: Conjunto bidimensional de dados $A$ {#tbl:dadospca}

![Conjunto de dados no plano cartesiano](images/machine_learning/example_01_pca.png){#fig:exemplo_01_pca}

A primeira etapa consiste no uso da [@eq:esperado] para extrair os valores esperados para as variáveis. Então normalizamos o conjunto $A$ em torno de um eixo centralizado sem prejudicar a variância, [@fig:exemplo_02_pca]. Essa normalização é realizada através da subtração do valor esperado em cada variável.

![Média subtraída dos pontos](images/machine_learning/example_02_pca.png){#fig:exemplo_02_pca}

Após a normalização, utilizamos a [@eq:covariancia], para extrair a matriz de covariância, apresentada na [@tbl:covariancia].

||X|Y|
|:---:|:---:|:---:|
|X|7.867|6.533|
|Y|6.533|8.967|
: Matriz de covariância para as variáveis X e Y {#tbl:covariancia}

Podemos observar que os valores da diagonal principal medem a variância ([@eq:variancia]) e da diagonal secundária, a covariância entre X e Y, ou seja, a forma como as variáveis se relacionam. Pode-se inferir que para medidas de covariância positivas, os valores variam para mais e para menos juntos; para covariâncias negativas, quando um valor cresce o outro decresce; por fim, para covariâncias nulas, não há correspondência entre os valores de X e Y.

A próxima etapa consiste na extração dos autovetores e autovalores a partir da matriz de covariância. Os autovetores representam as direções em que estão contidas as maiores variações para esse conjunto de dados. Então, selecionamos os autovetores que possuem os maiores autovalores correspondentes, já que estes são a representação da própria variância. Chamamos estes vetores de componentes principais.

Considere novamente o conjunto de dados $A$. O número de autovetores é igual a quantidade de dimensões dos dados originais. A [@fig:exemplo_04_pca] traça os autovetores sobre o conjunto $A$ normalizado. Observamos claramente que o sentido _vermelho_ possui os maiores autovalores associados, ou seja, é a direção que possui a maior variância acumulada, tornando-a o eixo unidimensional no qual serão projetados os dados.

![Autovetores extraídos da matriz de covariância](images/machine_learning/example_04_pca.png){#fig:exemplo_04_pca}

Os componentes principais são representações do conjunto de dados original projetados em um espaço dimensional reduzido. A [@fig:exemplo_04_pca] evidencia como a projeção desses dados em eixos que maximizam a variância ocasiona a perda de informações. Contudo, ainda é possível se obter um grau de confiança elevado nos dados obtidos para sua utilização em algoritmos de agrupamento [@tall17], nosso objetivo no Empurrando Juntos.

### t-SNE

Apesar do PCA ser uma das técnicas mais utilizadas para redução da dimensionalidade, existem outros métodos populares para visualização de dados com muitas dimensões. A técnica t-SNE também é capaz de fornecer uma representação bi ou tridimensional para cada dado. Esse método é uma variação do SNE (_Stochastic Neighbor Embedding_), o qual é muito mais propício à otimizações, e produz significantemente melhores visualizações a partir da redução da tendência do acúmulo de dados no centro das representações em dimensões menores. A vantagem do t-SNE é a forma como revela estruturas preservando as diferentes escalas no conjunto de dados [@geof08].

Técnicas lineares de redução de dimensionalidade, como o PCA, buscam uma representação em poucas dimensões de dados com um grau elevado de espalhamento. Entretanto, esses métodos são pouco eficientes quando desejamos representar dados muito similares que estão muito próximos uns dos outros. Para esse tipo de problema, técnicas não-lineares, como o t-SNE, podem ser utilizadas, já que evidenciam as diferentes escalas no conjunto de dados.

O t-SNE é capaz de capturar grante parte da informação contida individualmente em cada dado, o que chamamos de estruturas locais. Enquanto que, diferentemente de várias outras técnicas não-lineares, também é bastante eficiente na manutenção da estrutura global, como a presença de grupos em várias escalas [@geof08].

#### Definição



## Clusterização de dados {#sec:clusterizacao}

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

### _k-means_
### Outros
