\newpage
# Resultados {#sec:resultados}

A combinação dos diferentes tópicos abordados nesse projeto produziram três principais resultados que serão analisados neste Capítulo. O primeiro diz respeito à eficácia do método matemático proposto, aplicado no contexto do projeto "Brasil que o Povo Quer" da Fundação Perseu Abramo. O segundo refere-se a administração da metodologia de desenvolvimento em uma equipe heterogênea e distribuída. Por fim, apresentaremos os números relativos ao empenho das tecnologias apresentadas em um cenário de entrega contínua de um _Software_ Livre.

## Avaliação do método matemático

Martins [-@tall17] apresentou um conjunto de testes computacionais e também estableceu um conjunto de cenários fictícios para aferir uma acurácia média de 87% para o mesmo modelo aplicado neste trabalho. Entretanto, já expusemos e comentamos as limitações das decisões por trás do fluxo de processamento implementado. Mesmo assim, a realização da reengenharia desta solução não teve o intuito de substituir a lógica de clusterização desenvolvida. O processo de reimplementação realizado redefiniu a arquitetura do _software_, aplicou tecnologias que facilitaram a interação entre os componentes, como o Pandas, e estipulou um conjunto de ferramentas e práticas para disponibilização do trabalho desenvolvido como um _Software Livre_.

Nesse cenário, assim como mostra a [@fig:ejtchaupolis], foi possível acoplar a solução matemática no _backend_ do Empurrando Juntos em um ambiente real. Porém, dado o contexto volátil da criação de conversas pela Fundação Perseu Abramo, não houve oportunidade para testar o comportamento do _ej-math_ neste ambiente em tempo hábil para a conclusão desta obra.

Como implementamos o _ej-math_ através de um processo de reengenharia do Pol.is, podemos avaliar a satisfação dos envolvidos com as primeiras versões do Empurrando Juntos, que o utilizavam como ferramenta de clusterização. Nesse sentido, três experimentos e quatro protótipos de teste mobilizaram mais de 150 mil votos, realizados por milhares de pessoas. Parte dos dados coletados foram utilizados pela Fundação Perseu Abramo para avaliar o padrão de comportamento das pessoas atingidas pelas conversas.

Alguns marcos foram estabelecidos entre a coordenação do Empurrando Juntos e os assessores da Fundação Perseu Abramo. Esses marcos correspondiam a apresentação de um conjunto de funcionalidades e o planejamento das próximas versões a serem desenvolvidas. Neste âmbito, foram realizadas diversas reuniões que debatiam aspectos fundamentais do estado da solução. Essas discussões evidenciaram, entre outras questões, uma grande insegurança e imprecisão na pós análise dos _clusters_ gerados pelos algoritmos do Pol.is. Diversas tentativas de compreensão dos gráficos obtidos foram relatadas como inconclusivas ou pouco significativas. De acordo com os envolvidos, formavam-se dois grandes grupos, aqueles que votaram e aqueles que não votaram. Essa característica já havia sido prevista, como mostra a discussão apresentada na [@sec:polisdiscussao].

Segundo avaliações posteriores, dois fatores foram determinantes nos resultados inconclusivos das pesquisas. O primeiro foi o não tratamento dos valores nulos no cálculo das distâncias euclideanas, ou seja, o fato de incluir as dimensões com valores nulos (quando usuários ainda não votaram em determinados comentários) ao se cálcular os novos centroides do _k-means_. O segundo, foi a falta de um dispositivo que indicasse de alguma maneira informações de contexto aos _clusters_ extraídos. Isso ocasiona a necessidade do próprio usuário inferir, de maneira muitas vezes intuitiva, as probabilidades subjacentes que atuaram na formação de tais distribuições. Claramente, um método completamente suscetível a falhas graves.

Essas conclusões motivaram a idealização de um novo algoritmo para o _ej-math_. Esse algoritmo deveria ser uma evolução do _k-means_ nos dois aspectos evidenciados acima: o cálculo adaptativo das distâncias euclideanas e a criação de dispositivos capazes de agregar informações de contexto à clusterização. Esse algoritmo foi implementado no contexto do Empurrando Juntos genérico, entretanto, como não foi submetido a testes, não possui resultados mensuravéis e se apresenta como um possível trabalho futuro. Discutiremos brevemente a solução desenvolvida no Capítulo [-@sec:conclusao].

## Avaliação do método de desenvolvimento

Observamos uma evolução contínua da metodologia de desenvolvimento que iniciou o projeto. Substituímos o Taiga como principal ferramenta de gestão em detrimento do uso exclusivo do Gitlab, e depois, no projeto Empurrando Juntos genérico, passamos a utilizar o _Projects_ do Github para mapear as _tasks_ e _meta-issues_. A comunicação passou a ser mais efetiva através das discussões no grupo geral de desenvolvedores do Telegram, e a formalização das atividades passou a ser realizada através de rótulos e _issues_ criadas em um repositório centralizado.

No contexto do projeto "Brasil Que o Povo Quer", em seis meses de trabalho foram criadas 272 _issues_ nos principais repositórios de desenvolvimento. Participaram efetivamente do processo de implementação 20 pessoas distribuídas em quatro frentes: _backend_, _frontend_, _design_ e coordenação. Juntas, essas pessoas comentaram 402 vezes nos 15 repositórios criados para diferentes componentes do _software_, incluindo as replicações do Pol.is e da solução de Martins [-@tall17] para fins de estudo.

Os desenvolvedores realizaram 1221 _commits_, 30 no _ej-math_, 437 no _ej-server_ e 754 no _ej-front_ (nome dado ao _frontend_ do Empurrando Juntos). Foram lançadas 14 versões diferentes do _ej-front_, 39 do _ej-server_ e 3 do _ej-math_. Uma ferramenta auxiliar de notificações também foi desenvolvida pelo Hacklab e faz parte do conjunto de soluções desenvolvidas, o _django-courrier_.

Os diferentes módulos do Pol.is tiveram que ser adaptados para o contexto do Empurrando Juntos, assim 198 _commits_ foram realizados com o intuito de preparar a ferramenta para ser portada em qualquer infraestrutura, 26 no _polisClientAdmin_, 53 no _polisServer_, 103 no _polisClientParticipation_ e 16 no _polisMath_. Apesar da licença livre, não há relatos de comunidades de _software_, fora os próprios desenvolvedores, que obtiveram sucesso em criar instâncias desta ferramenta, isto é visto como mais uma conquista do projeto. Várias funcionalidades presentes na instância oficial do Pol.is na _Web_ não estão disponíveis em seus repositórios públicos, violando os termos da licença AGPLv3 a qual estão submetidos.

Já no projeto Empurrando Juntos genérico, que herdou boa parte dos trabalhos desenvolvidos no Hacklab, 19 colaboradores participaram efetivamente do desenvolvimento e das discussões sobre os novos aspectos da ferramenta. Veja na tabela [@tbl:compejs] os dados referentes aos dois projetos.

|                               | Brasil que o Povo Quer | Empurrando Juntos genérico |
| :---------------------------- | :--------------------: | :-------------------------:|
| Tempo de projeto              | 7 meses                | 5 meses                    |
| Envolvidos no desenvolvimento | 20                     | 19                         |
| Número de _commits_           | 1221                   | 673                        |
| Número de _issues_            | 272                    | 202                        |
| Número comentários em _issues_| 402                    | 251                        |
| Quantidade de _releases_      | 56                     | 4                          |

: Comparação dos diferentes contextos do Empurrando Juntos {#tbl:compejs}

Observamos claramente uma aparente cadência maior no projeto "Brasil que o Povo Quer". De fato, a Fundação Perseu Abramo exigia entregas com uma frequência muito maior e com pouca flexibilidade. Isso culminou em algumas falhas de projeto e fragilidades em vários módulos e algoritmos. É importante destacar que o _ej-server_, no contexto do Hacklab, não continha no _pipeline_ uma integração contínua assegurada por testes, o que dificultava os procedimentos de entrega.

Através de um período dedicado exclusivamente a uma intensa refatoração sistemática do código utilizado no "Brasil que o Povo Quer", a equipe de desenvolvimento do Empurrando Juntos genérico estabeleceu critérios mais rígidos para o desenvolvimento de novas _features_. Implementou uma suíte básica de testes e a incluiu no _pipeline_ de integração contínua. Desta maneira, podemos enxergar os valores mais tímidos do Empurrando Juntos genérico como a aplicação de diversos padrões que refletem em um sistema mais coeso, desacoplado, manutenível e seguro, que obviamente, demanda mais tempo e esforço por parte dos desenvolvedores para garantir a qualidade de código. Isso foi possível também graças a uma relação claramente mais amena e transparente com os investidores e interessados.

## Avaliação das tecnologias utilizadas

O conjunto de ferramentas utilizadas para a integração e o _deploy_ contínuo foram de extrema importância para o fluxo de trabalho da equipe. Garantiram a integração de qualquer funcionalidade desenvolvida no ambiente de homologação em uma média de 12 minutos. Isso é possível porque através do Rancher os processos mais burocráticos da criação de serviços foram automatizados: criação de certificados, configuração de _load balance_, redirecionamentos internos, etc.

Quando falamos de serviços de integração contínua, as _pipelines_ podem ser descritas como o fluxo de construção, teste e _deploy_ de uma nova alteração no código. Foram executadas 1087 _pipelines_ no Gitlab CI que criaram e disponibilizaram diferentes versões intermediárias do Empurrando Juntos. Tanto o Pol.is quanto os componentes do Empurrando Juntos foram disponibilizados através de imagens Docker no Gitlab Registry. O _ej-math_ está disponível no repositório de pacotes Python, PyPI, através do nome "_pushtogether-math_".

A arquitetura distribuída permite que diferentes partes do _software_ sejam atualizadas separadamente. Isso garante uma estabilidade maior para a plataforma e facilita o trabalho de manutenção. Além disso, a utilização dos _workers_ do Celery como módulos matemáticos independentes ocasiona uma grande facilidade em escalar a capacidade de processamento através da replicação dos contêineres _workers_ no Rancher. Há ainda a possibilidade de tornar o sistema reativo à demanda através de ferramentas de monitoramento disponíveis no catálogo padrão do Rancher, por exemplo, o Prometheus e o Grafana.
