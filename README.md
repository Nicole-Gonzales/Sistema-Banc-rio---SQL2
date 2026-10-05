
# Sistema Bancário SQL

Projeto desenvolvido para praticar conceitos de banco de dados relacionais utilizando MySQL e MySQL Workbench.

O projeto simula um sistema bancário, com cadastro de clientes, contas bancárias e transações realizadas nas contas.

## Tecnologias

- MySQL
- MySQL Workbench
- SQL

## Estrutura do banco

O banco de dados `sistema_bancario` possui três tabelas:

### Clientes

Armazena as informações dos clientes:

- ID
- Nome
- E-mail
- Telefone

### Contas

Armazena as informações das contas bancárias:

- ID
- Cliente
- Número da conta
- Tipo da conta
- Saldo
- Data de abertura

### Transações

Armazena as movimentações realizadas nas contas:

- ID
- Conta
- Tipo de transação
- Valor
- Data da transação

## Relacionamentos

O banco possui os seguintes relacionamentos:

- Um cliente pode possuir uma ou mais contas.
- Cada conta pertence a um cliente.
- Uma conta pode possuir várias transações.
- Cada transação pertence a uma conta.

As tabelas são relacionadas por meio de chaves estrangeiras (`FOREIGN KEY`).

## Dados

O projeto possui:

- 20 clientes cadastrados
- 20 contas cadastradas
- 60 transações cadastradas

Os tipos de conta utilizados são:

- Corrente
- Poupança

Os tipos de transação utilizados são:

- Depósito
- Pagamento
- Saque
- Transferência

## Arquivos

### banco.sql

Contém o código SQL responsável pela criação e preenchimento do banco de dados, incluindo:

- Criação das tabelas
- Definição das chaves primárias
- Definição das chaves estrangeiras
- Inserção dos clientes
- Inserção das contas
- Inserção das transações

### consultas.sql

Contém as consultas SQL utilizadas para consultar e analisar os dados do banco.

### README.md

Contém a documentação e a explicação do projeto.

## Objetivo

O objetivo deste projeto é praticar conceitos fundamentais de SQL e banco de dados, como:

- Criação de tabelas
- Chaves primárias
- Chaves estrangeiras
- Relacionamentos entre tabelas
- Inserção de dados
- Consultas SQL
- `SELECT`
- `INNER JOIN`
- Organização de um projeto SQL para GitHub
