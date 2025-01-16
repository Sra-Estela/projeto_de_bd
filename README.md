# **Proposta 5:** Sistema de Controle de Estoque para uma Distribuidora

---

Objetivo:

Desenvolver uma aplicação web utilizando Flask (Python) e MySQL para monitorar e
gerenciar o estoque de produtos em um armazém. O sistema deve fornecer funcionalidades
de controle de entradas e saídas de produtos, bem como relatórios detalhados para apoiar a
tomada de decisão.

Escopo do projeto:

### **1. Cadastro de Produtos:**

* Registro de produtos com informações como nome, descrição, preço de custo, preço de venda e quantidade inicial em estoque.

* Edição e exclusão de produtos existentes.

### **2. Gestão de Movimentação de Estoque:**

* Registro de entradas e saídas de produtos, com informações sobre quantidade, data e motivo da movimentação (ex.: compra, venda,devolução).

* Atualização automática do estoque após cada movimentação.

### **3. Relatórios e Consultas Avançadas:**

* Produtos com menor quantidade em estoque: Lista dos produtos com estoque abaixo de 10 unidades.

* Histórico de movimentações por produto: Registro detalhado de todas as entradas e saídas de um produto específico.

* Total de entradas e saídas por período de dias: Relatório que soma as movimentações de estoque em um intervalo de datas, por produto ou por
categoria.
