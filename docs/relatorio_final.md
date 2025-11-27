# BANCO DE DADOS SARAM

Davi Miguel Almeida da Silva

Gabriel Chaves Nascimento

Gabriel Lucas de Carvalho Santos

João Lucas Garcia Oliveira

João Vitor Oliveira Niederauer

Rafael Silvestre da Silva

---

**Professor:**

Marco Paulo Soares Gomes

---

Curso:
_Curso de Ciência de Dados, Unidade Praça da Liberdade_

_Instituto de Informática e Ciências Exatas – Pontifícia Universidade de Minas Gerais (PUC MINAS), Belo Horizonte – MG – Brasil_

---

## Sumário 



---

## Resumo



---

## Introdução 

Um armazenamento e controle de dados eficiente são problemas recorrentes em diversos negócios no Brasil. Desse modo, o presente trabalho tem como objetivo a construção de um banco de dados em colaboração com uma empresa parceira de modo a usar o contexto de seu negócio para trabalharmos técnicas desenvolvidas na disciplina Banco de Dados. A empresa parceira é o pet shop “Saúde Animal”, escolhida para fins didáticos, sem a implementação real de um sistema em ambiente corporativo. Assim, usamos apenas a natureza dos dados do negócio, com o objetivo de gerenciamento de produtos e controle de estoque da casa de ração. 

Nesse contexto, nos apoiamos na metodologia de um projeto em Banco de Dados, passando pelas etapas de especificação do minimundo, levantamento de requisitos, construção do projeto conceitual, lógico e físico. Dessa forma, o trabalho proporciona a aplicação prática dos conteúdos teóricos abordados em sala de aula, permitindo aos estudantes exercitarem a análise de problemas reais e propor soluções de armazenamento e organização de dados que atendam às demandas do negócio.

---

## Especificação do minimundo 

Essa seção compreende o minimundo, que corresponde a uma representação simplificada e delimitada da realidade, criada para facilitar a análise e o desenvolvimento de soluções em um projeto de banco de dados. Ele funciona como um recorte específico de um negócio ou organização, contendo apenas as informações e processos que são relevantes para os objetivos do sistema a serem projetados. Dessa forma, o minimundo não busca reproduzir toda a complexidade do ambiente real, mas sim estruturar e organizar os dados necessários para responder a um problema definido. No contexto do presente trabalho, o minimundo adotado é o de uma casa de ração vinculada ao pet shop “Saúde Animal”. Esse ambiente foi escolhido para fins acadêmicos e didáticos, permitindo a simulação das operações essenciais do negócio. O funcionamento do minimundo envolve o mapeamento de elementos como o catálogo de produtos, fornecedores, movimentação de estoque e registro de entradas e saídas, representando de maneira clara as regras e restrições do domínio. A seguir está a descrição do negócio:

- A casa de ração Saúde Animal possui CNPJ e endereço. O estabelecimento é focado em operações de estoque, compras e vendas sem cadastro de clientes. Para organização interna, a loja mantém registro de parâmetros de reposição por produto, apoiando decisões de compra.
- O catálogo é composto por 4.580 produtos. Todo produto tem um código, nome, marca, categoria (ração, brinquedo, higiene, acessórios, areias), unidade de venda (UN ou KG). Produtos de ração trazem atributos de espécie-alvo (cachorro, gato, ave), fase de vida (filhote, adulto), porte (pequeno ou grande). Para todo produto controla-se data de validade, no qual o primeiro a vencer é o primeiro a vender.
- O negócio opera ração em saco e a granel. A loja mantém graneleiros identificados, cada um associado a um único tipo de ração a granel por vez, com capacidade definida. Abastecimentos e retiradas de granel geram movimentos de estoque associados ao graneleiro.
- A loja trabalha com 60 fornecedores. Cada fornecedor possui nome, CNPJ e telefones. Um produto pode ser fornecido por múltiplos fornecedores, permitindo comparar condições de preço e prazo. As compras são registradas por pedidos com itens contendo produto, quantidade, preço e tempo médio de entrega.
- As vendas são registradas sem identificação de cliente: cada venda possui data, forma de pagamento (dinheiro, débito, crédito, PIX), valor total, produto, quantidade (em UN ou KG) e o preço.

Nesse contexto, temos como objetivo construir um banco de dados que centralize e estruture as informações necessárias para gerenciar o catálogo de produtos, controlar estoque, registrar entradas e saídas, bem como apoiar a reposição. O foco é acadêmico: não haverá implantação real, mas o projeto reflete as regras e necessidades do negócio.

---

## Projeto Conceitual 

Essa seção compreende o projeto conceitual do banco de dados SARAM, no qual é apresentado um Diagrama Entidade Relacionamento, uma representação gráfica de como os dados e informações da casa de ração são organizados.

[Diagrama ER](imagens/ProjetoConceitual_Final(azul).png)

---

## Projeto Lógico 

Essa seção compreende o projeto lógico do banco de dados SARAM. Nessa etapa, traduzimos os dados representados na etapa anterior pelo diagrama ER, para um modelo de tabelas, especificando as colunas, chaves primárias e estrangeiras. Nesse contexto, nos baseamos em um SGBD de modelo relacional, de modo a estruturar nossos dados de maneira lógica, nos preparando para uma implementação física. A seguir estão descritas as tabelas e seus atributos: 

- **Produto** (`codigo`, nome, categoria, unidade_venda, validade, quantidade)

- **Racao** (`codigo`, nome, categoria, unidade_venda, validade, quantidade, especie_alvo, fase_vida, porte)

- **Graneleiro** (`id_graneleiro`, nome, quantidade)  
  **Graneleiro [nome] → Racao [nome]**

- **Reposicao** (`codigo, id_graneleiro`, data, quantidade)  
  **Reposicao [codigo] → Racao [codigo]**  
  **Reposicao [id_graneleiro] → Graneleiro [id_graneleiro]**

- **Venda** (`cod_venda`, forma_pagamento, data, valor_total_venda)

- **ItensVenda** (`cod_venda, cod_produto`, quantidade, preco)  
  **ItensVenda [cod_venda] → Venda [cod_venda]**  
  **ItensVenda [cod_produto] → Produto [codigo]**

- **Fornecedor** (`CNPJ`, nome)

- **Telefones** (`CNPJ, telefone`)  
  **Telefones [CNPJ] → Fornecedor [CNPJ]**

- **Fornece** (`CNPJ, cod_produto`, tempo_entrega, preco)  
  **Fornece [CNPJ] → Fornecedor [CNPJ]**  
  **Fornece [cod_produto] → Produto [codigo]**

- **Pedido** (`cod_pedido`, CNPJ, data, valor_total_compra)  
  **Pedido [CNPJ] → Fornecedor [CNPJ]**

- **ItensPedido** (`cod_pedido, cod_produto`, quantidade, preco)  
  **ItensPedido [cod_pedido] → Pedido [cod_pedido]**  
  **ItensPedido [cod_produto] → Produto [codigo]**


O projeto lógico tem referência direta com o projeto conceitual, no qual foram mapeadas seis entidades e cinco relações, transformando-as em tabelas para o modelo lógico-relacional. 

---

## Projeto Físico

Essa seção compreende o projeto físico do banco de dados SARAM, no qual implementamos as regras do negócio descritas no projeto conceitual e lógico, em um código de linguagem SQL. Nesse contexto, para manipular os dados da casa de ração, utilizamos o SGBD (Sistema Gerenciador de Banco de Dados) Postgresql.

O script a seguir na linguagem sql foi usado para criar as tabelas:

[Create Table](../src/create.sql)

Além disso, populamos as tabelas com dados fictícios que representam a casa de ração Saúde Animal. Não usamos os dados reais da empresa para não comprometer a segurança de seus dados. Para a inserção de valores, elaboramos o seguinte script:

[Inserts](../src/insert.sql)

Nessa perspectiva, utilizamos do sql para responder perguntas voltadas para o negócio, relacionadas a consultas reais feitas pela casa de ração. Desse modo, para resolver tais problemas, elaboramos códigos com o comando SELECT, gerando assim, os resultados em forma de tabela. 

[Selects](../src/select.sql)

---






