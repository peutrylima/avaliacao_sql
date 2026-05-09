# 🚌 Sistema de Gestão de Viagens de Ônibus

Este repositório contém o script SQL desenvolvido como **avaliação final da disciplina de Banco de Dados** na faculdade. O projeto simula o banco de dados de uma empresa de viagens de ônibus (focada em destinos no Tocantins, como Palmas, Araguaína, Jalapão, etc.), abrangendo desde a criação da estrutura das tabelas até consultas e manipulações complexas de dados.

---

## 📌 Contexto do Projeto

O objetivo desta avaliação foi colocar em prática os principais conceitos de modelagem e manipulação de bancos de dados relacionais. O script fornecido não apenas cria a estrutura (`DDL`), mas também popula o banco com dados fictícios (`DML`) e resolve 15 exercícios práticos envolvendo regras de negócio específicas.

## 🗄️ Estrutura do Banco de Dados (Schema)

O banco de dados, nomeado `DB_AULA16_4N`, é composto por 4 tabelas principais:

* **`cliente`**: Armazena os dados dos passageiros (ID, Nome, CPF).
* **`onibus`**: Registra a frota disponível (ID, Placa, Quantidade de Assentos, presença de Wi-Fi).
* **`viagem`**: Relaciona os ônibus aos trajetos (ID, Ônibus utilizado, Data, Destino).
* **`clienteViagem`**: Tabela associativa (N:M) que registra quais clientes participaram de quais viagens e o valor pago pela passagem.

---

## 🚀 Conceitos e Consultas Aplicadas

O script contém 15 exercícios resolvidos que demonstram proficiência nas seguintes operações SQL:

* **Filtros e Agrupamentos Avançados**: Uso de `GROUP BY` e `HAVING` para filtrar destinos com múltiplas viagens ou clientes recorrentes.
* **Junções de Tabelas (JOINs)**: 
    * `INNER JOIN` cruzando até 4 tabelas para obter o histórico completo de um cliente.
    * `LEFT JOIN` para identificar entidades sem relacionamento (ex: ônibus que nunca foram utilizados em viagens).
* **Funções de Agregação**: 
    * `SUM` (Faturamento total e gastos por cliente).
    * `AVG` (Média de preço das passagens).
    * `MAX` (Passagem mais cara vendida).
    * `COUNT` / `COUNT DISTINCT` (Contagem de viagens, passageiros e diversidade de clientes).
* **Manipulação de Dados (DML) e Integridade Relacional**:
    * Uso de **Subconsultas (Subqueries)** para deletar registros condicionados a dados de outras tabelas (`DELETE` com `IN`).
    * Atualização (`UPDATE`) de chaves estrangeiras para `NULL` para permitir a exclusão de registros pai sem violar a restrição de chave estrangeira (`DELETE`).
