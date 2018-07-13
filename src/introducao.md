\newpage
# Introdução {#sec:introducao}

O andar da carruagem democrática tem seguido, desde a Grécia Antiga, um caminho árduo e tortuoso que nem sempre ofereceu aos povos o protagonismo que lhes é prometido. O desenvolvimento das TIC's (Tecnologias da Informação e Comunicação) aponta para o surgimento de uma democracia que, entre outras coisas, promete esse protagonismo em relação ao Estado e a distribuição de poder [@icd17]. Nesse contexto, observamos nos últimos anos uma ascenção de propostas e projetos cuja finalidade é aplicar métodos do universo altamente tecnológico da sociedade da informação para solucionar problemas de um ambiente social cada vez mais integrado e envolvido nas discussões sobre o futuro da democracia.

Nos últimos anos, o Brasil experienciou uma série de iniciativas tecnológicas fomentando a participação social. Como exemplo, podemos citar a consulta pública sobre a Lei do Marco Civil da Internet em 2009, o Participa.br lançado em 2014 e o portal _e_-Democracia da Câmara dos Deputados. Bem sucedidas ou não, essas e outras iniciativas serviram de insumo para pesquisas sobre as arquiteturas de _software_ utilizadas.

Vários métodos e arranjos para uma proposta de participação foram testados e comparados. As observações realizadas, principalmente sobre o engajamento da sociedade nas soluções propostas, apontam para uma metodologia focada em minimizar o esforço necessário para desempenhar as ações básicas da plataforma. Apesar desta abordagem ter sido implementada em um número relativamente pequeno de _softwares_, apresentou uma adesão de usuários consideravelmente superior às outras. Os resultados obtidos explicam que a melhor maneira para engajar a sociedade em uma ferramenta de participação, consiste na criação de arquiteturas e algoritmos que forneçam uma interação dinâmica e minimalista, associada a uma estratégia de recompensa para quem participa. Trata-se do modelo chamado participação _crowdsource_, que possui uma capacidade de promover o aumento gradual na energia de participação dos usuários [@icd17].

É claro que os limites para a participação não foram completamente ultrapassados. Um dos mais evidentes continua sendo a formação de bolhas de opinião nas redes de participação. Essas bolhas são formadas por algoritmos que identificam padrões de comportamento dos usuários e aproximam aqueles com maior afinidade, estimulando a participação dentro de um grupo isolado de pessoas e opiniões; um reflexo negativo dos modelos de negócios adotados pelas modernas e massivas redes sociais.

Nesse contexto, o ICD (Instituto Cidade Democrática) submeteu uma proposta de desenvolvimento de _software_ ao workshop Inteligência Coletiva para a Democracia (2016), promovido pelo Medialab Prado em Madri. A proposta almejava incluir uma diversidade maior de cidadãos nos processos de participação digital e agir como um contrapeso para o modelo de negócio das grandes redes sociais, que produzem, muitas vezes como um produto secundário, bolhas de opinião prejudiciais ao processo democrático. Além disso, tomaram como premissa a utilização de tecnologias livres, capazes de se adaptarem a dinâmica participativa, intrinseca a existência de um Estado democrático. O _software_ em questão veio a se chamar EJ (Empurrando Juntos) e é o objeto de pesquisa desse trabalho.

Nesta plataforma o usuário participa realizando ações que demandam pouca energia, isto é, possuem uma barreira inicial pequena ou irrelevante para sua execução. O fluxo básico de participação é a criação de uma proposta de discussão, que chamamos de conversa; nesta, os usuários podem escrever pequenos comentários e então participar votando em uma das três opções, "concordo", "discordo" e "passo" para cada um desses comentários.

A partir desse modelo de participação, é possível utilizar um algoritmo de agrupamento para então inferir análises sofisticadas sobre o padrão de comportamento e a opinião das pessoas em uma determinada discussão temática. As informações obtidas, além de relevantes para pesquisas, são utilizadas por uma estratégia de gamificação a qual estabelece papéis e poderes para usuários que possuem determinadas características pré-estabelecidas. Esses papéis e poderes buscam fomentar a participação dos usuários e colocar em evidência opiniões divergentes dentro e fora dos grupos, reduzindo assim o efeito das bolhas. Essas _features_ são explicadas no Capítulo [-@sec:ej].

Esse trabalho apresenta o estudo realizado sobre os algoritmos, técnicas, metodologias e ferramental que serviram como base para o desenvolvimento da plataforma de participação Empurrando Juntos.

## Justificativa

O trabalho iniciado em Madri ganhou grande destaque entre os trabalhos apresentados no workshop. Recebeu ótimas críticas pela forma como se posicionou em relação ao protagonismo dos participantes e ao recente fenômeno das bolhas de opinião. Já nesse momento, conquistou uma série de vitórias que reforçaram as expectativas e o respaldo sobre a concepção da ideia. A mais importante delas foi a formação de uma equipe de colaboradores que envolvia uma potente rede de produção de tecnologias livres no Brasil (Cidade Democrática, LAPPIS-UnB e Rede Livre), que também contou com o apoio direto de Colin Megill, cofundador e CEO da popular ferramenta de participação Pol.is, e Audrey Tang, atualmente Ministra Digital de Taiwan.

Buscar garantir a voz das minorias no fluxo principal de comunicação, possibilitar todos os lados serem ouvidos e garantir que o contraditório esteja sempre visível, são objetivos sociais que por si só configuram uma forte justificativa para o desenvolvimento deste trabalho. A esses objetivos, estão associados vários problemas que já possuem soluções conhecidas pela Ciência da Computação, Ciência Política, Ciência de Dados, Engenharia de _Software_, etc. Há, no entanto, a necessidade de se empenhar consideráveis esforços para unir, testar, adaptar e evoluir um conjunto relativamente grande de informações, métodos e técnicas para a concepção e desenvolvimento deste _software_.

Destaca-se também o importatante viés colaborativo para a concepção e desenvolvimento da plataforma. Nesse aspecto, evidencia-se a utilização de tecnologias livres que fomentem a formação de uma comunidade de desenvolvimento aberta e ativa em torno do projeto. O empenho na formação desta comunidade, assim como os obtivos sociais almejados, foram fatores determinantes para que o Empurrando Juntos tenha ganhado dezenas de colaboradores como, por exemplo, o laboratório Hacklab de São Paulo. Nesse contexto, a organização dos envolvidos, seus papéis e contribuições de maneira ágil e eficiente também configura um nicho importante de trabalho.

Sabendo o potencial da ciência e da inovação tecnólogica como base para a reformulação da sociedade a serviço de seu próprio benefício, levantamos também a questão do estudo e evolução de algoritmos de clusterização em favor do bem social. Esse estudo fornece a base teórica para a construção dos principais componentes da plataforma Empurrando Juntos e serve também como recurso para pesquisas relacionadas.

## Objetivos

### Objetivo Geral {#sec:objetivogeral}

O objetivo central desse trabalho é conceber uma plataforma de participação social que atenda às necessidades evidenciadas acima, seguindo o modelo de participação _crowdsource_ e utilizando um algorítimo de clusterização capaz de inferir grupos no conjunto de usuários com base em sua participação em uma determinada conversa _online_.

Elaborar um projeto no contexto de _Software_ Livre, torna essêncial o estabelecimento e a formalização de um método dinâmico e eficiente de desenvolvimento e contribuição, que dê suporte à criação e manutenção de uma comunidade sólida de envolvidos. Essa metodologia deve ser construída fortemente embasada sobre os princípios do desenvolvimento ágil, e desta forma, ser amparada por um ferramental tecnológico que garanta um nível adequado de automatização dos processos.

O embasamento necessário para as escolhas realizadas durante a implementação da proposta deve ser apoiado no estudo teórico sobre os principais tópicos que envolvem a concepção e construção da ferramenta: aprendizado de máquina, algoritmos de clusterização, vizualização de dados, arquiteturas de _software_ em plataformas de participação, democracia e participação social.

Uma vez que possuímos uma solução testada e funcional, será realizada uma avaliação sobre as principais decisões arquiteturais tomadas e o algoritmo de clusterização utilizado, assim como a forma que interferiram, ao final, na conformidade com o que nos propusemos a desenvolver.

### Objetivos Específicos

Destacamos os seguintes objetivos específicos que satisfazem a conclusão dos temas apresentados na [@sec:objetivogeral]:

* Realizar estudo técnico sobre aprendizado de máquina;
* Explorar tópicos sensíveis referentes à democracia e participação social;
* Elaborar um processo de desenvolvimento tendo como base princípios ágeis e de _Software_ Livre;
* Embasar nos estudos realizados as escolhas de tecnologias e arquitetura;
* Implementar a solução dentro do processo definido;
* Disponibilizar ferramenta para o público;
* Formalizar e analisar os resultados obtidos.

## Organização do trabalho

Este trabalho é organizado em 6 capítulos. O Capítulo [-@sec:ml] apresenta um estudo sobre o tema Aprendizado de Máquina, para que, no Capítulo [-@sec:ej], seja apresentado o Empurrando Juntos, suas _features_, arquitetura, e contexto na sociedade. O Capítulo [-@sec:metodologia] desenvolve a metodologia aplicada para a implementação do _backend_ da plataforma, e os Capítulos [-@sec:resultados] e [-@sec:conclusao] discutem os resultados obtidos e concluem todo trabalho realizado.
