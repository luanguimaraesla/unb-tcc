# Plataforma de participação {#sec:ej}

_Empujando Juntos_, em espanhol, foi o primeiro nome dado à plataforma de participação social baseada no modelo _crowdsource_ que permite a interação _online_ de usuários através de diálogos, comentários e votos. Pensado inicialmente pelo Institudo Cidade Democrática, uma organização não governamental brasileira, foi selecionado como uma das oito melhores propostas submetidas à primeira edição do Hackaton Inteligência Coletiva para a Democracia, em 2016, realizado nos laboratórios do ParticipaLab, em Madri, Espanha.

Neste evento, que reuniu pessoas de diversas nacionalidades, os principais conceitos sobre o que viria a ser o _software_ foram idealizados. Metodologias desenvolvidas sobre os objetivos sociais da plataforma, como intensificar os processos de participação nas redes, nasceram de diálogos interdisciplinares que evidenciaram a importancia das TICs na evolução das sociedades, e também, as limitações e potencialidades das tecnologias existentes que buscam consolidar esse papel.

## Democracia e Participação Social

No contexto brasileiro, a Constituição Federal de 1988, indicou, ainda que de maneira sucinta, que as políticas públicas a partir desta data deveriam ser realizadas em regime de gestão compartilhada, ou seja, com ampla participação da sociedade. Entretanto, os diferentes arranjos sócio-políticos, que permearam o Brasil durante as três décadas seguintes, obtiveram êxitos contestáveis, principalmente quando nos referimos à efetividade da implementação de mecanismos de participação institucionais [@roma15].

Neste período, a realidade conta que o fato ocorrido foi a intensificação da realização de formas já existentes de participação de maneira nem sempre organizada [@roma15]. Via de regra, a Constituição vigente não estabelece clara e objetivamente qual é a função das deliberações encaminhadas dos processos de participação no contexto da governança pública. Assim, tanto o Estado quanto a sociedade civil figuram em uma situação semi estática sobre a seleção de rumos e mecanismos que fomentariam um vínculo efetivo entre a opinião popular e as políticas públicas implementadas.

Observamos aqui uma dualidade entre Estado e sociedade como entidades distintas dentro do processo democrático. Seja esse o reflexo de um passado oligárquico ou não, é evidente a distinção de dois papéis e suas atribuições, assim como as expectativas de um em relação ao outro. Nesse aspécto, podemos notar que, em algum momento, o Estado pressupôs que o ambiente democrático pós-ditadura incentivaria gradualmente o engajamento e a autonomia da sociedade como o seu próprio agente aprimorador [@roma15]. Assim, os governos seriam obrigados a deliberar em conjunto com uma população autiva e interessada nos caminhos a serem seguidos na constante evolução da democracia.

O fracasso de tal ideal não seria maior se nesse curto tempo não tivéssemos nos deparado com as modernas TICs, que revolucionaram o potencial de articulação não apenas da sociedade civil brasileira, mas do mundo inteiro, através da _Internet_. Com 1,65 bilhão de usuários ativos (medidos em 2016) a plataforma de mídias sociais do Facebook é a principal esfera pública digital para boa parte das pessoas conectadas à internet [@joao18]. É provavelmente a principal influência de grande parte das novas redes sociais digitais, e mesmo com seus 14 anos de mercado, mantém o vigor de sua soberania com uma política de inovação tecnológica ágil e eficiente.

Embora sejamos capazes de associar, ao Facebook, uma inerente capacidade de impulsionar o processo de participação democrática a nível mundial, devemos ponderar sobre vários de seus objetivos de negócio, que refletem um contraponto importante a esse processo. Para proporcionar o melhor retorno possível aos seus anunciantes, as plataformas massivas de mídias sociais utilizaram e desenvolveram diversas técnicas de coleta de dados pessoais e reconhecimento de padrões, buscando inferir o máximo de informações sobre os comportamentos de seus usuários. Desta forma, pode-se proporcionar uma experiência personalizada de visualização de conteúdos e anúncios, aumentando o tempo médio de utilização dessas ferramentas [@joao18].

Forma-se um ciclo em que os dados de um usuário são colhidos, o seu padrão de comportamento é extraído a partir desses dados, a ferramenta proporciona uma experiência personalizada, o usuário a utiliza por mais tempo, mais dados são coletados, e assim, a cada ciclo, os algoritmos refinam o conjunto de informações disponíves. Nesse contexto, podemos observar uma forte tendência para o reforço e manutenção de padrões de comportamento já conhecidos através do refinamento das experiências individuais ao longo do tempo.

> _"A nova geração de filtros online examina aquilo de que aparentemente gostamos -- as coisas que fazemos, ou as coisas das quais as pessoas parecidas conosco gostam -- e tenta fazer extrapolações. São mecanismos de previsão que criam e refinam constantemente uma teoria sobre quem somos e sobre o que vamos fazer ou desejar a seguir. Juntos, esses mecanismos criam um universo de informações exclusivo para cada um de nós – o que passei a chamar de bolhas dos filtros – que altera fundamentalmente o modo como nos deparamos com ideias e informações"_ [@pari12].

Os efeitos colaterais dos modelos de negócio das grandes redes sociais, e consequentemente os algoritmos implementados por elas, acarretam impactos significativos no processo de participação democrática. Levando ainda em consideração que são essas as plataformas que, por terem o maior número de pessoas, concentram a maior parte do debate político na _Internet_, se reduz a esfera pública a micro-ecossistemas que desencorajam a conversa entre pessoas que não concordam entre si, e isso é péssimo para a democracia [@joao18].

Esse cenário se soma às limitações destacadas sobre a promoção de mecanismos governamentais de participação. Os meios pelos quais o debate democrático vem se propagando não são pensados para potencializar a evolução da democracia:

> _"A esfera pública interconectada passa a estar aprisionada a uma lógica que enfraquece o tecido social e molda a formação política e de opinião às ondas de desinformação, no que já está começando a ser chamado de 'a era da pós-verdade'"_ [@icd17].

A identificação das limitações das grandes plataformas de mídias sociais constitui o cerne da proposta deste trabalho: um mecanismo de impulsão e análise dos processos de deliberação coletiva, o Empurrando Juntos. Neste âmbito, há um enorme conjunto de ferramentas de código livre que nos auxiliaria na concepção e desenvolvimento da plataforma. Optamos por incorporar o Pol.is em nossa estratégia.

## Pol.is {#sec:polis}

Pol.is é uma plataforma de conversação _online_ que busca representar visualmente a forma como diferentes grupos de opinião se formam em uma conversa sobre determinado assunto. É baseado em votos atribuídos a pequenos comentários de outros usuários sobre o tema proposto. O objetivo fundamental da ferramenta é ajudar organizações a se compreenderem através da visualização do que seus membros pensam.

A [@fig:poliscomentario] mostra o contexto principal de participação no Pol.is. Os usuários escrevem comentários de até 140 caracteres sobre um tema específico. Nesse caso, o tema proposto é um _brainstorming_ para o aprimoramento da educação no Brasil. Um cartão é exibido com um comentário aleatório feito por algum usuário da conversa. Pode-se votar em três opções: "concordo", "discordo" e "passo/indeciso".

![Comentário no Pol.is](images/ej/polis_comment.png){#fig:poliscomentario}

A partir das reações dos participantes, a ferramenta processa os votos coletados dos usuários com dois dos algoritmos que explicamos na [@sec:ml]: o PCA e o _k-means_. É possível ver os grupos de usuários formados [@fig:polisgrupos], assim como opções de visualização das estatísticas básicas dos diferentes _clusters_. Podemos concluir que a ferramenta busca evidenciar os diferentes grupos de opinião a partir da análise da concordância dos votos de cada participante.

O Pol.is faz parte de um grupo de plataformas que chamamos de _Crowdsourceded_. Essa arquitetura possui diferenças significativas dos fóruns de diálogo tradicionais, baseados em um modelo de discussão que chamamos de _Threaded_. Uma Discussão _Crowdsourced_ preza pela máxima utilização de todas as informações disponíveis, enquanto uma discussão _Threaded_, uma vez que nela existe hierarquização no conjunto de ideias, perde-se igualdade no tratamento do valor inerente a cada comentário, e ainda corre-se o risco de que essa sistematização oculte do processo democrático partes importantes do diálogo.

Os dois modelos apresentados são aplicados a fases diferentes do processo de participação social. Dado um momento de aperfeiçoamento em determinada temática, a discussão em linha tem a capacidade de promover um aprofundamento sistemático das questões levantadas. Já para o engajamento em massa, a arquitetura _Crowdsourced_ cria uma barreira relativamente menor para que os usuários possam participar efetivamente do debate.

Nesse cenário, o Pol.is não permite que os participantes respondam aos comentários. Sua arquitetura se baseia fortemente na horizontalidade da informação, isto é, rejeita esse tipo de encadeamento da conversa para formular uma matriz de usuários e comentários que matematicamente possuem o mesmo peso. Apesar das críticas da comunidade sobre possíveis superficialidades dos diálogos, os desenvolvedores justificam que essa limitação forçada é uma característica essêncial para a projeção equalitária dos comentários, já que estes não se perderão em árvores de discussões enormes.

![Grupos no Pol.is](images/ej/polis_groups.png){#fig:polisgrupos}

Embora haja evidências consistentes sobre distorções estatísticas geradas pela maneira como o Pol.is estrutura seu processamento de dados, como explicamos na [@sec:polisdiscussao], optamos por incorporar o Pol.is nas versões iniciais do Empurrando Juntos. A decisão de adotar e expandir esse mecanismo baseia-se no diagnóstico que precisamos urgentemente melhorar nossas ferramentas de deliberação coletiva em dois aspectos complementares:

* A ferramenta de deliberação deve atingir níveis mais elevados de envolvimento em massa na deliberação coletiva gratuita.
* A ferramenta deve promover o engajamento coletivo que supera a lógica de confronto das mídias sociais e permitir a colaboração entre diferentes agentes que buscam o bem comum.
* A ferramenta deve possuir licença compatível com a filosofia do _Software_ Livre: liberdade para se executar, estudar, redistribuir e aperfeiçoar o código fonte.

Por mais que o Pol.is entregue grande parte das características esperadas, que aprofundaremos na [@sec:empjuntos], ele possui sérias limitações sobre a forma como os usuários interagem e se mantém engajados ao longo do ciclo de vida de uma conversa. A apresentação das estatísticas e a visualização dos _clusters_ são os objetivos finais da experiência de uso da plataforma. O Empurrando Juntos tem como objetivo extender essa experiência, atuando como um agente fomentador do diálogo e da convergência de opiniões.

## Empurrando Juntos {#sec:empjuntos}

O nome Empurrando Juntos faz referência ao termo em inglês _Push Notification_, que é um sistema de distribuição de conteúdo na _Internet_ em que a informação se propaga à partir de um ponto para uma rede de usuários conectados, chamados de "assinantes". A ideia de uma arquitetura capaz de utilizar mecanismos tecnológicos, que favoreçam o engajamento da população em uma plataforma de participação social é a essência do _software_ que nos propusemos à projetar e desenvolver.

O problema que a plataforma busca resolver pode ser resumido como: a escassez de um ambiente planejado para lidar com os impactos negativos causados pela manipulação e desinformação da sociedade nos espaços de deliberações políticas digitais. A maioria desses ambientes não é preparada para lidar com a complexidade da evolução da democracia, e por vezes estimula a polarização e a formação de bolhas de opinião entre seus participantes. A influência dessas ferramentas vem extrapolando os meios digitais e operando uma verdadeira transformação nos instrumentos tradicionais de deliberação, como eleições, plebiscitos, referendos, etc. Sem escaptatória, os governos, partidos políticos, organizações sociais e outros interessados tentam, sem sucesso, desenvolver suas próprias alternativas. Entre falta de investimentos e falhas conceituais, essas tecnologias não possuem algoritmos e arquiteturas preparadas para lidar com as iminentes peculiaridades de uma sociedade altamente interconectada através da _Internet_; assim, sucumbem.

Neste cenário, o Empurrando Juntos se propôs a extender as funcionalidades da ferramenta emergente chamada Pol.is, que já demonstrava um grande potencial para fomentar espaços democráticos _online_. Em sua primeira concepção, a plataforma seria um aplicativo que permitiria visualizar os grupos de opinião e suas opiniões majoritárias, consumindo as informações fornecidas pela API (do inglês _Application Programming Interface_) do Pol.is. Com esse intuio, o papel do Empurrando Juntos seria criar freios e contrapesos que trouxessem diversidade para a opinião da maioria e impedissem que só um lado dominasse o fluxo principal da comunicação. Além dessa, foram destacadas outras seguintes características:

* Permitir plugar ferramentas livres de deliberação coletiva e participação;
* Protocolo de identidade distribuído com privacidade;
* _Push Notifications_ de engajamento e ação coletiva direcionada às aplicações móveis;
* Licença aGPLv3, documentação e estratégia de acolhimento de contribuições da comunidade.

Sintetizando, o Empurrando Juntos seria um aplicativo e uma plataforma _Software_ Livre que se conectaria com a aplicação _Crowdsourced_ Pol.is e utilizaria notificações para potencializar o debate informado, a diversidade de opinião e a ação coletiva.

Ainda em Madri, no evento internacional que reuniu, entre outras personalidades, o CEO do Pol.is, Colin Megill e o primeiro time de desenvolvimento do Empurrando Juntos, ficou claro que a integração com o Pol.is poderia ser complexa e dispendiosa. Apesar de possuir licença compatível, essa ferramenta se mostrou um projeto de difícil implantação, manutenção e contribuição, o que configurou uma grande barreira para a continuação do projeto. Esses impedimentos culminaram na decisão de se projetar um ecossistema completo que atendesse às necessidades de nossa proposta. Naquele momento as características estabelecidas foram [@tall17]:

1. **Código aberto**: O ecossistema do Empurrando Juntos deve ser aberto, com licença livre;
2. **Tratamento dos Votos**: O Empurrando Juntos deve ser capaz de manipular votos que representam a concordância, a discordância e a abstenção de opinião de um usuário em um comentário, de maneira similar à plataforma Pol.is.
3. **Grupos de opinião**: O Empurrando Juntos deve ser capaz de identificar grupos de opinião em uma conversa com base nos votos dos usuários, que possam ser visualizados em gráficos similares aos da plataforma Polis.
4. **Opinião majoritária**: O Empurrando Juntos deve ser capaz de identificar comentários que representem a opinião majoritária de todos os participantes, de maneira similar à plataforma Polis.
5. **Perfil ativista de minoria**: O Empurrando Juntos deve ser capaz de identificar usuários com perfis de ativista de minoria em uma conversa.
6. **Perfil ponte de diálogo**: O Empurrando Juntos deve ser capaz de identificar usuários com perfis de ponte de diálogo em uma conversa.
7. **Perfil criador de consulta**: O Empurrando Juntos deve ser capaz de fomentar o debate através da figura do participante que cria a consulta.

Martins [-@tall17] desenvolveu um protótipo de _software_ que implementava os três primeiros itens. Os demais, assim como em seu trabalho, não serão contemplados neste. O protótipo desenvolvido forneceu as principais diretrizes para o estudo efetivo do método matemático por trás da clusterização oferecida pelo Pol.is e serviu de base para a proposição de uma arquitetura robusta e escalável que pudesse ser disponibilizada ao público em geral.

Várias modificações estruturais foram realizadas na concepção inicial da plataforma. A interface foi completamente repensada para outros contextos e a ideia da aplicação móvel passou a figurar em um segundo plano. O primeiro financiamento de longo prazo para o desenvolvimento do Empurrando Juntos veio da Fundação Perseu Abramo e envolveu, além do Instituto Cidade Democrática, o laboratório de _Software_ Livre Hacklab de São Paulo. Assim, iniciamos a primeira rodada de desenvolvimento da plataforma.

### Proposta

As decisões arquiteturais abordadas neste trabalho contemplam o desenvolvimento do _backend_ do Empurrando Juntos. Esta estrutura é o conjunto de ferramentas e algortimos que integraram três sistemas distintos: o banco de dados da aplicação, que define todo o modelo de dados que armazenaremos; a biblioteca de clusterização, que fornece os algoritmos necessários para a criação dos grupos de opinião; e o núcleo do _backend_ que integra essas partes, define as regras de negócio e fornece uma API para o consumo das informações por outros _softwares_, como o próprio _frontend_ da plataforma.

Esta Seção apresenta as decisões e reflexões que, sustentadas pelo embasamento teórico fornecido nos Capítulos anteriores, foram importantes para a composição das estratégias de desenvolvimento do _backend_ do Empurrando Juntos. Plataforma que busca suprimir a necessidade de um ambiente planejado para lidar com a complexidade da evolução da democracia através de uma rede social que utiliza algoritmos de aprendizado de máquina e técnicas de engajamento social para potencializar os níveis de participação.

As características da solução devem condizer com as seguintes condições:

1. Deve fornecer uma interface de criação, edição, leitura e remoção de contas de usuário.
2. Deve fornecer uma interface de criação, edição, leitura e remoção de conversas.
3. Deve fornecer uma interface de criação e leitura de comentários e votos.
4. Os votos devem representar a opinião do participante sobre determinado comentário: concorda, discorda ou se abstém.
5. Deve ser capaz de inferir grupos de opinião por conversa a partir dos votos registrados pelos participantes.
6. Deve fornecer uma interface para obtenção de comentários aleatórios em uma conversa.
7. O criador da conversa poderá moderar os comentários realizados.
8. Deve fornecer uma interface para leitura de estatísticas extraídas de conversas.
9. Deve estabelecer políticas configuráveis de restrição de comentários por conversa para evitar _spams_.
10. Deve permitir a utilização de contas de aplicações externas para cadastro: Facebook e Twitter.

As próximas Seções deste Capítulo descrevem a forma como estruturamos e implementamos esse conjunto de características, assim como o conjunto das principais tecnologias utilizadas.

### Dependência do Pol.is

As ferramentas desenvolvidas no contexto do Empurrando Juntos foram prefixadas com o identificador "ej". A biblioteca de clusterização foi nomeada como _ej-math_. Como esclarecemos na discussão aprensentada na [@sec:polisdiscussao], decidimos inicialmente replicar o método matemático utilizado pelo Pol.is. Não só decidimos pelo método, mas também optamos, em um primeiro momento, por realizar um grande esforço na configuração do Pol.is como mecanismo de clusterização e visualização dos _clusters_. Essa decisão se deu por condições dos marcos de entrega viculados ao financiamento do projeto. Estimamos que levaria mais tempo para produzir o _ej-math_ do que para implantar o Pol.is, mesmo com todas as dificuldades aparentes.

A [@sec:arquitetura] descreve uma arquitetura sem o Pol.is, entretanto ela não condiz com a linha do tempo do desenvolvimento do projeto. Na verdade, pensamos em um modelo arquitetural que permitisse a evolução gradativa e independente do _ej-math_ enquanto lançávamos versões que dependiam apenas do Pol.is. É importante esclarecer que não substituímos ou alteramos partes da estrutura dessa ferramenta, nós a mantivemos como o único mecanismo de clusterização responsável pelas informações que o _backend_ fornecia. Enquanto isso, acoplamos e desenvolvemos aos poucos as ferramentas e os algoritmos do _ej-math_ sem que esse fizesse parte do fluxo de processamento de dados principal.

O objetivo dessa estratégia foi permitir a substituição completa do Pol.is pelo _ej-math_, no momento em que este último estivesse maduro o suficiente para fornecer, além dos _clusters_, as estatísticas necessárias para o suporte das demais funcionalidades planejadas para o Empurrando Juntos.

### Biblioteca de clusterização _ej-math_

A biblioteca de clusterização foi desenvolvida em _Python_, uma linguagem de programação interpretada de alto nível, imperativa, multiparadigma e de tipagem dinâmica. É amplamente adotada pela comunidade ciêntifica para diversos fins. Suas características permitiram o desenvolvimento de uma infinidade de bibliotecas, inclusive várias que se aplicam e facilitam o desenvolvimento do _ej-math_. Falaremos sobre algumas delas nas próximas Seções.

#### Ferramentas

As principais ferramentas utilizadas no projeto são distribuídas através de pacotes _Python_, destacamos as três principais: Numpy, Scikit-Learn e Pandas.

* **Numpy**: é considerado o pacote fundamental para a computação científica com o _Python_. Entre vários recursos, destacam-se funções sofisticadas de _broadcasting_, matrizes $N$-dimensionais, ferramentas para integração de outras linguagens, como C e Fortran, e um poderoso arsenal para lidar com operações de álgebra linear. NumPy é licenciado sob a licença BSD, permitindo a reutilização com poucas restrições.

* **Scikit-Learn**: é uma biblioteca de aprendizado de máquina de código aberto. Suas interfaces são projetadas para interagir com o pacote NumPy. Inclui vários algoritmos de classificação, regressão e agrupamento incluindo florestas aleatórias, _gradient boosting_ e DBSCAN. Utilizaremos suas eficientes implementações do _k-means_, do PCA e da extração do coeficiênte de silhueta.

* **Pandas**: O pandas é uma biblioteca _Python_ também sob a lincença BSD. Ela oferece estruturas de dados de alto desempenho e uma interface fácil utilização, assim como algumas ferramentas de análise de dados. No _ej-math_, o Pandas é o elemento básico de construção de alto nível para fazer a análise prática dos dados extraídos da conversa, mais especificamente da matriz de comentários por usuários que registra os votos individuais.

Essas ferramentas são integradas para a construção do _ej-math_, um pacote _Python_ com uma interface única para cálculo de grupos de usuários através dos votos que estes realizam em uma conversa.

#### Implementação

O _ej-math_ utiliza conceitos da programação funcional para implementar quatro módulos que se comunicam entre si. Esses módulos utilizam as expostas acima e possuem os seguintes papéis e as interfaces correspondentes:

* **cluster**: define a interface única do _ej-math_.
  - *get_clusters/2*: recebe uma lista de votos com seus respectivos usários e comentários, e uma lista numérica de possíveis valores _k_ para o número de _clusters_. Retorna um dicionário com os usuários clusterizados.

* **data_converter**: converte a lista de votos para uma matriz do Pandas (_DataFrame_) de usuários por comentários.
  - *convert_to_dataframe/1*: recebe uma lista de votos e retorna um Pandas _DataFrame_.

* **decomposer**: reduz a dimensionalidade do dado.
  - *pca_decompose/2*: recebe um Pandas _DataFrame_ e o número de dimensões do espaço reduzido. Aplica o PCA fornecido pela biblioteca Scikit-Learn e retorna um novo Dataframe com os respectivos valores após a transformação linear.

* **kmeans**: aplica o _k-means_ para uma lista de valores _k_ e seleciona aquele com maior coeficiênte de silhueta.
  - *make_clusters/2*: recebe uma lista de votos e uma lista de possíveis valores _k_. Executa as tranformações necessárias com o auxílio dos outros módulos. Retorna um dicionário de _k clusters_ com as respectivas posições normalizadas dos usuários.

As funções internas de cada módulo não foram descritas nessa lista, elas incluem normalizações, validações, cálculo do coeficiênte de silhueta, e outros.

Mencionamos a função *get_clusters/2* como única interface da biblioteca _ej-math_. Essa função recebe dois argumentos, sendo que o primeiro é.

### Arquitetura do _ej-server_ {#sec:arquitetura}
#### Django
#### Celery
* Workers
* RabbitMQ
* Redis
