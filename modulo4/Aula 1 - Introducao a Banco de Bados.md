# **Bem vindos ao módulo de Banco de Dados!**

Parabéns por terem chego até aqui!<br>
Vamos estudar?<br><br>

---

## 👨‍🏫 O Professor 👨‍🏫

#### Brian Andrade Nunes

- Graduando de Engenharia de Computação - POLI - USP<br />
- Professor na Let's Code
- Ex-estagiário no time de desenvolvimento do BTG Pactual
- Estagiário no time de desenvolvimento da Let's Code
- E-mail: brian.nunes@usp.br<br />
- WhatsApp: (11) 96391-3887<br />

---

## O Quarto Módulo

- Entendimento do conceito do que é banco de dados e como ele funciona

- Apropriação das técnicas para configuração do ambiente local

- Apropriação das técnicas de criação de databases e tabelas

- Apropriação das técnicas de inserção, leitura simples, atualização e remoção de dados das tabelas.

- Entendimento dos conceitos de modelagem de banco de dados

- Entendimento dos conceitos de normalização

- Apropriação das técnicas para consultas com JOIN

- Apropriação das técnicas para consultas com funções de agregação

---

## 📍 Tópicos de Hoje 📍

<br>

🖖 Conversa, Apresentação e o Módulo

👣 O que é um banco de dados?

👶 Quais os tipos de banco de dados?

🚶‍♂️ Os bancos de dados relacionais

🏃 Os bancos de dados não relacionais

🏆 Armazenamento dos dados no computador

🚀 Exercícios

---

## **Introdução a Banco de Dados**

Vamos imaginar uma compra na internet. Você está navegando pelo site de uma loja e se interessa por um produto, o adiciona no carrinho de compras, verifica o valor de frete e decide seguir com a compra. Nesse momento você clica no botão “comprar”, automaticamente o site te direciona para uma página de cadastro, ali você informa alguns de seus **dados pessoais**: Nome; Sobrenome, E-mail, CPF e Endereço.

Um próximo passo é escolher a **forma de pagamento**: Cartão de crédito, Débito, Boleto bancário. Você decide usar o cartão de crédito.

Após essas etapas, o site apresenta uma mensagem semelhante à:

**"Estamos validando o seu pagamento junto ao banco emissor do cartão."**

Em questões de segundos essa mensagem é substituída pela confirmação de compra e você já recebe um e-mail com o número do pedido.\*\*

Pois bem, **todas essas informações estão armazenadas** em um Banco de Dados.

> **"O principio básico de um Banco de Dados é armazenar informações de um sistema."**

## Dado x Informação

A diferença básica entre dado e informação é simples, dado é um valor sem conexão, ou seja, que não é possível gerar nenhuma conclusão sobre ele, exemplo: 21. 21 é apenas um número que não temos o que extrair dele por sí só. Agora se dissermos que Arthur tem 21 anos, 21 se torna uma informação pois temos alguma relação com o dado, algo que podemos extrair e concluir.

Um banco de dados armazena, claro, vários dados, mas uma vez que organizemos estes dados em tabelas ou documentos e tenhamos um uso específico para eles, eles se tornam dados!

## Armazenamento dos dados no computador

Até o momento trabalhamos com dados em nosso computador utilizando a memória ram, que é uma memória sem persistência, ou seja, quando desligamos ou computador, ou mesmo só encerramos o programa, tudo registrado nela é perdido. No máximo chegamos a utilizar arquivos de texto para registrar dados em arquivos que seriam armazenados em nosso disco rígido que por sua vez possui armazenamento persistente então mantém o que foi salvo mesmo com o computador sendo desligado.

Em sistemas reais difícilmente vamos trabalhar com armazenamentos desses, tanto pela sua falta de praticidade quanto pelas diversas limitações de armazenamento e organização dos dados, por isso utilizamos bancos de dados em servidores para usufruir de sua organização e disponibilidade (considerando que o servidor está na internet e com as credencias de acesso pode ser acessado de qualquer lugar)

## Banco de dados, como se encaixa em um sistema?

Um site é parte de um sistema. Podemos simplificar um sistema em 3 camadas:

**Front-end** e **Back-end** e **Banco de Dados**.

- **Front-end**  
  É a parte que o cliente visualiza de um site, suas cores, animações, disposições de texto, imagem e campos.

- **Back-end**  
  É tudo que ocorre nos bastidores de um site, é toda a lógica de instruções e comandos que faz com que o site faça o que queremos.

- **Banco de Dados**  
  É onde todos os dados informados no site são gravados.

![](https://www.homehost.com.br/blog/wp-content/uploads/2019/09/1557080784763701500.jpg)

## Tipos de Banco de Dados

Assim como existem tipos de Linguagens de Programação [Java](https://letscode.com.br/cursos/java), [C#](https://letscode.com.br/cursos/csharp), [Python](https://letscode.com.br/cursos/python_adulto), entre outras, nós também temos **tipos de Banco de Dados**. Eles podem ser dividos em **Relacionais** e **Não Relacionais**.

### Relacionais (SQL)

São dados estruturados em um formato de tabela, coluna e linha _(podemos imaginar uma planilha de excel)_. Utiliza-se da linguagem SQL para manipulação dos dados.

```sql
SELECT * FROM usuarios WHERE estado = "Rio de Janeiro"
```

#### Exemplos de Sistemas de Gerenciamento de Banco de Dados Relacionais Open Source (Grátis)

[MySQL](https://www.mysql.com/)  
[PostgreSQL](https://www.postgresql.org/)

#### Exemplos de Sistemas de Gerenciamento de Banco de Dados Relacionais Pago

[SQLServer](https://www.microsoft.com/pt-br/sql-server/sql-server-2019)  
[Oracle](https://www.oracle.com/index.html)

### Não Relacionais (NoSQL)

São dados não estruturados, utiliza-se o conceito de Chave e Valor ou Orientado a Documento _(podemos imaginar um bloco json, que no python se assemelham a dicionários)_. Utiliza-se sintaxe de linguagem JSON para manipulação dos dados.

```json
db.usuarios.find(
    { estado: { $eq: "Rio de Janeiro" } }
)
```

Além desse caso mais comum de documento também possuimos outros tipos de bancos não relacionais:

- Colunas – Os dados são armazenados em linhas particulares de tabela no disco, podendo suportar várias linhas e colunas. Também permitem sub-colunas. Um banco de dados dessa família, por exemplo, é o Cassandra;

- Grafos – Os dados são armazenados na forma de grafos (vértices e arestas). O Neo4j é um banco que utiliza grafos;

- Chave-valor – Esta família de bancos NoSQL é a que aguenta mais carga de dados, pois o conceito dele é que um determinado valor seja acessado através de uma chave identificadora única. Um exemplo é o banco de dados Riak.

#### Exemplos de Sistemas de Gerenciamento de Banco de Dados Não Relacionais

[Cassandra](https://cassandra.apache.org/)  
[MongoDB](https://www.mongodb.com/)  
[AWS DynamoDB](https://aws.amazon.com/dynamodb/?sc_channel=PS&sc_campaign=acquisition_BR&sc_publisher=google&sc_medium=english_dynamodb_b&sc_content=dynamodb_e&sc_detail=dynamodb%20aws&sc_category=dynamodb&sc_segment=89108950468&sc_matchtype=e&sc_country=BR&s_kwcid=AL!4422!3!89108950468!e!!g!!dynamodb%20aws&ef_id=CjwKCAiAxeX_BRASEiwAc1QdkQgIqmcplyErSngutzlCn39g6P7Cb3h_ypgxU7KigpMhQ-OP57QZRRoCkM8QAvD_BwE:G:s&s_kwcid=AL!4422!3!89108950468!e!!g!!dynamodb%20aws)  
[AWS DocumentDB](https://aws.amazon.com/pt/documentdb/)

##### Cassandra e MongoDB tem versões pagas e gratuitas, que podem ser instaladas localmente. Os Banco de Dados na AWS são pagos 'sob demanda' e não possuem versão local.

## Quando cada um é utilizado?

A melhor maneira de saber quando usar cada um deles é destacando os pontos fortes de cada uma dessas tecnologias.

O banco de dados relacional sempre irá fornecer dados íntegros e imutáveis, garantindo um controle transacional consistente. Além disso, seu esquema é rígido, sendo possível atribuir campos e estabelecer se o dado de uma coluna é nulo ou não nulo.

Já o banco de dados não relacional, que representa diversos tipos de bancos de dados, não exige a rigidez de esquemas para armazenar os dados, ou seja, ele não limita os campos, diferente das colunas do SQL. Além disso, é possível adicionar novas propriedades, sem a preocupação com o impacto nas demais informações já armazenadas.

Caso sua empresa esteja aplicando metodologias ágeis modernas, um banco de dados relacional provavelmente não seria uma boa opção nesse contexto, pois ela requer um nível maior de preparação.

Não existe um modelo que seja melhor do que o outro, pois cada um tem seu ponto forte. Tudo dependerá do contexto e da necessidade da empresa.

## Como projetar um banco de dados?

Como elaborar um banco de dados?
Em um processo de desenvolvimento de um sistema de software, o projeto de elaboração do banco de dados é uma das etapas mais importantes. Esse processo se divide, basicamente, em algumas partes. São elas: projeto conceitual, projeto lógico e projeto físico.

**Projeto conceitual:**

Com as expectativas, necessidades e requisitos do cliente alinhados com o projetista, um esquema conceitual do banco de dados é elaborado, por meio de uma visão macro.

**Projeto lógico:**

Aqui há o mapeamento mais detalhado dos conceitos e de como eles serão organizados no banco de dados, seja em tabelas, esquemas, metadados das colunas etc.

**Projeto físico:**

Nesta etapa final, são definidos os detalhes técnicos da implementação do banco de dados, como a forma que serão armazenados, os scripts que irão criar as tabelas e visões do banco, entre outros.

## Exercícios / Discussões para Fixação

**1.** Quais sistemas do dia a dia vocês usam que possuem bancos de dados? Quais os dados que vocês acham que são armazenados e por quê?

**2.** Vocês utilizaram algo que fazia um paralelo com um banco de dados durante o curso. Lembram o que foi? Com tipo de banco de dados aquilo se parecia? Quais as semelhanças e diferenças?

**3.** Quais as principais diferenças de um banco NoSQL para um SQL? Imagine que você é chefe do departamento de tecnologia de uma StartUp e estão criando um novo sistema para a empresa, a start up cresce bem rápido, e muitas demandas inesperadas são adicionadas constantemente, qual tipo de banco de dados você escolheria e por quê? Agora em outro cenário, você é head de técnologia de um banco, seus sistemas são bem rígidos, e vocês prezam pela alto controle dos dados, consistência e também pelo relacionamento dos dados, qual o tipo mais adequado de banco de dados e por quê?

**4.** Considerando o contexto e o que você sabe sobre big data, qual você acredita ser o melhor tipo de banco para essa nova tendência? Por quê? E o quão grande você acredita que o volume de dados precisa ser para que seja categorizado como Big Data?
