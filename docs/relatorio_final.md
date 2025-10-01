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
- O catálogo é composto por 4.580 produtos. Todo produto tem um código, nome, marca, categoria (ração, brinquedo, higiene, acessórios, areias), unidade de venda (UN ou KG) e apresentação (ex.: saco 15 kg, 20 kg ou granel). Produtos de ração trazem atributos de espécie-alvo (cachorro, gato, ave), fase de vida (filhote, adulto), porte (pequeno ou grande, aplicável a cães) e condições especiais (castrado, aplicado a gatos). Para rações e itens perecíveis controlam-se lotes e data de validade.
- A loja trabalha com 60 fornecedores, dos quais 8 são especializados em ração. Cada fornecedor possui CNPJ, telefones e um tempo médio de entrega. Um produto pode ser fornecido por múltiplos fornecedores, permitindo comparar condições de preço e prazo. As compras são registradas por pedidos com itens contendo produto, quantidade, preço e, quando aplicável, lote/validade.
- O negócio opera ração em saco e a granel. Existem 110 tipos de ração cadastrados para granel, vendidos por quilograma. A loja mantém graneleiros identificados, cada um associado a um único tipo de ração a granel por vez, com capacidade definida. Abastecimentos e retiradas de granel geram movimentos de estoque associados ao graneleiro.
- As vendas são registradas sem identificação de cliente: cada venda possui data, forma de pagamento (dinheiro, débito, crédito, PIX), valor total e itens. Cada item referencia um produto, quantidade (em UN ou KG) e o preço.
- O controle de lote é realizado para que o primeiro a vencer é o primeiro a vender.

Nesse contexto, temos como objetivo construir um banco de dados que centralize e estruture as informações necessárias para gerenciar o catálogo de produtos, controlar estoque, registrar entradas e saídas, bem como apoiar a reposição. O foco é acadêmico: não haverá implantação real, mas o projeto reflete as regras e necessidades do negócio.

---
