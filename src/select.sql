-- Qual a quantidade no estoque da Ração Bovinos Crescimento?
Select quantidade, nome from Produto
where nome = 'Ração Bovinos Crescimento'

-- Qual a soma de todas as vendas?
Select sum(valor_total_venda) as Soma_Venda
from Venda

-- Qual a soma de todos os pedidos?
Select sum(valor_total_compra) as Soma_Pedidos
from Pedido

-- Quais produtos serão vendidos primeiro, de acordo com a data de validade?
Select nome, validade from Produto
order by validade 

-- Qual o telefone do fornecedor Rações Brasil?
Select telefone, Fornecedor.nome
from Telefones 
join Fornecedor ON Telefones.CNPJ = Fornecedor.CNPJ
where Fornecedor.nome = 'Rações Brasil'

-- Qual o fornecedor com menor preco para a Racão Premium Caninos?
Select f.nome, preco
from Fornecedor f join Fornece fo ON f.CNPJ = fo.CNPJ join Produto ON fo.cod_produto = Produto.codigo
where Produto.nome = 'Ração Premium Caninos'
order by preco 

-- Qual o fornecedor que entrega mais rápido a Ração Gold Felinos?

Select f.nome, tempo_entrega
from Fornecedor f join Fornece fo ON f.CNPJ = fo.CNPJ join Produto on fo.cod_produto = Produto.codigo
where Produto.nome = 'Ração Gold Felinos'
order by tempo_entrega
