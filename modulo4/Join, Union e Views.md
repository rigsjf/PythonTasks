# Novas maneiras de fazer SELECT e salvar suas consultas frequentes

## JOINS

Joins são utilizadas para fazer consultas que visem resultados vinculando mais de uma tabela. Possuimos os seguintes tipos de Joins:

- **INNER JOIN**: Retorna os valores em comum nas duas tabelas
- **LEFT JOIN**: Retorna todos os valores da tabela da esquerda e os valores em comum.
- **RIGHT JOIN**: Retorna todos os valores da tabela da direita e os valores em comum.
- **CROSS JOIN**: Retirorna todos os valores das duas tabelas

[Representação](./ilustracao-joins.png)

```sql
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```

A consulta acima trará todos os registros que tiverem a coluna de CustomerID em comum nas duas tabelas.

## UNION

O UNION serve para unirmos resultados de dois ou mais SELECTs. E para isso:

- Todos os selects envolvidos devem ter a mesmo quantidade de colunas;
- As colunas devem ter os mesmos tipos;
- As colunas em cada SELECT devem seguira mesma ordem.

```sql
SELECT Cidade FROM Clientes
UNION
SELECT Cidade FROM Fornecedores;
```

O UNION ignora duplicatas, caso deseje que elas pareçam no resultado devem usar o UNION ALL:

```sql
SELECT Cidade FROM Clientes
UNION ALL
SELECT Cidade FROM Fornecedores;
```

Os SELECTS envolvidos podem ter WHERE para aplicação de filtros.

## VIEWS

VIEWS são tabelas virtuais provenientes do resultado de um SELECT, as VIEWS são sempre atualizadas com o resto do banco de dados e servem para facilitar consultas e sub consultas. Podemos criar elas como no seguinte exemplo:

```sql
CREATE VIEW Brazil_Customers AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
```

Para atualizar/alterar uma VIEW utilizamos:

```sql
CREATE OR REPLACE VIEW Brazil_Customers AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';
```

VIEWs podem ter sua necessidade cessada e com isso surge o interesse em apaga-la, para isso fazemos:

```sql
DROP VIEW Brazil_Customers;
```

### Motivos para utilizarmos VIEWS:

- Restringir acesso a dados: VIEWS podem adicionar uma camada extra de segurança ao permitir acesso apenas a certas colunas e linhas de uma tabela;

- Esconder complexidade de dados: Uma view pode simplificar uma query com muitos joins filtros complexos;

- Simplificar ao usuário: Uma view permite um usuário consultar dados complexos apenas utilizando ela, sem precisar de conhecimentos avançados sobre o banco de dados em questão;

- Armazenar buscas complexas: Algumas buscas podem ser pesadas, e a view serve como uma memória para que estas consultas lentas não precisem ser repetidas tantas vezes.

- Renomeação de colunas: As views podem ter colunas com nomes alterados sem afetar a estrutura principal do banco;

- A possibilidade de multiplas VIEWS: Podemos ter views diferentes de uma mesma tabela para cada usuário no banco.

# Exercícios

**1)** Qual a diferença entre os Joins LEFT, RIGHT e INNER?

**2)** Pense 5 exemplos onde UNIONS possam ser interessantes.

**3)** No cenário de Ciência de Dados, por que e como uma VIEW pode nos poupar tempo e dinheiro?

Para as próximas perguntas considere o banco de dados do Bicicletário que viemos utilizando nas últimas aulas.

**5)** Crie uma consulta com LEFT, RIGHT e INNER JOIN para buscar todas as bicicletas de todas as lojas, garanta que em seu banco você possui ao menos uma loja sem bicicletas. Como vieram os resultados? Quais as diferênças entre os JOINS? Por quê houveram (ou não houveram) diferenças?

**6)** Crie uma consulta para buscar todas as bicicletas atualmente alugadas. Garanta em em seu banco você possui ao menos uma bicicleta que esteja disponivel. Utilize LEFT, RIGHT e INNER JOIN tanto para a tabela intermediaria quanto para a tabela aluguel. Como os diferentes tipos de JOIN afetaram o resultado? Por que isso ocorreu?

**7)** Garanta que você possua um cliente e uma loja com um mesmo e-mail. Use o UNION para selecionar todos emails de Lojas e Clientes. Agora altere a consulta para que não haja e-mail duplicados. Como você fez isso?

**8)** Algumas buscar são constantes em nosso banco, como os alugueis ativos de um cliente, de uma loja e as bicicletas disponíveis em cada loja, para facilitar a utilização do banco crie três views que sejam compostas por essas consultas.
