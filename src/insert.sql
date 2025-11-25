INSERT INTO Produto (codigo, nome, categoria, unidade_venda, validade, quantidade) VALUES
(101, 'Ração Premium Caninos', 'Ração', 'Saco 15kg', '2027-01-15', 120),
(102, 'Ração Gold Felinos', 'Ração', 'Saco 10kg', '2026-11-30', 80),
(103, 'Milho Triturado', 'Grão', 'Saco 25kg', '2026-08-20', 200),
(104, 'Farelo de Soja', 'Suplemento', 'Saco 30kg', '2026-09-15', 150),
(105, 'Ração Inicial Aves', 'Ração', 'Saco 20kg', '2026-02-10', 100),
(106, 'Ração Bovinos Crescimento', 'Ração', 'Saco 30kg', '2025-12-12', 70),
(107, 'Ração Suínos Engorda', 'Ração', 'Saco 25kg', '2026-03-08', 90);


INSERT INTO Racao (codigo, nome, categoria, unidade_venda, validade, quantidade, especie_alvo, fase_vida, porte) VALUES
(101, 'Ração Premium Caninos', 'Ração', 'Saco 15kg', '2027-01-15', 120, 'Cachorros', 'Adulto', 'Grande'),
(102, 'Ração Gold Felinos', 'Ração', 'Saco 10kg', '2026-11-30', 80, 'Gatos', 'Filhote', 'Pequeno'),
(105, 'Ração Inicial Aves', 'Ração', 'Saco 20kg', '2026-02-10', 100, 'Aves', 'Inicial', 'Pequeno'),
(106, 'Ração Bovinos Crescimento', 'Ração', 'Saco 30kg', '2025-12-12', 70, 'Bovinos', 'Juvenil', 'Grande'),
(107, 'Ração Suínos Engorda', 'Ração', 'Saco 25kg', '2026-03-08', 90, 'Suínos', 'Engorda', 'Médio');

INSERT INTO Graneleiro (id_graneleiro, nome, quantidade) VALUES
(1, 'Ração Premium Caninos', 500),
(2, 'Ração Gold Felinos', 350),
(5, 'Ração Inicial Aves', 200),
(6, 'Ração Bovinos Crescimento', 150),
(7, 'Ração Suínos Engorda', 100);

INSERT INTO Reposicao (codigo, id_graneleiro, data, quantidade) VALUES
(101, 1, '2025-06-10', 50),
(102, 2, '2025-06-12', 40),
(105, 5, '2025-06-15', 30),
(106, 6, '2025-06-16', 25),
(107, 7, '2025-06-14', 100);


INSERT INTO Venda (cod_venda, forma_pagamento, data, valor_total_venda) VALUES
(301, 'Cartão de Crédito', '2025-04-15', 480.00),
(302, 'PIX', '2025-04-17', 950.00),
(303, 'Dinheiro', '2025-04-18', 320.00),
(304, 'Cartão Débito', '2025-04-19', 360.00),
(305, 'Cartão de Crédito', '2025-04-20', 1200.00);


INSERT INTO ItensVenda (cod_venda, cod_produto, quantidade, preco) VALUES
(301, 101, 2, 240.00),
(302, 103, 10, 95.00),
(303, 102, 1, 320.00),
(304, 105, 2, 180.00),
(305, 106, 3, 400.00);

INSERT INTO Fornecedor (CNPJ, nome) VALUES
('45.123.678/0001-90', 'AgroNutri Ltda'),
('02.987.654/0001-22', 'NutriMais Alimentos'),
('33.456.123/0001-45', 'Campo Forte Distribuidora'),
('11.222.333/0001-88', 'Grão & Cia'),
('07.654.321/0001-77', 'Rações Brasil');

INSERT INTO Telefones (CNPJ, telefone) VALUES
('45.123.678/0001-90', '(11) 99888-7744'),
('45.123.678/0001-90', '(11) 3344-1122'),
('02.987.654/0001-22', '(19) 99122-5566'),
('33.456.123/0001-45', '(51) 98211-2200'),
('33.456.123/0001-45', '(51) 1483-3669'),
('11.222.333/0001-88', '(11) 99254-9008'),
('07.654.321/0001-77', '(41) 97777-8800');


INSERT INTO Fornece (CNPJ, cod_produto, tempo_entrega, preco) VALUES
('45.123.678/0001-90', 101, 35, 229.90),
('07.654.321/0001-77', 101, 30, 200.00),
('45.123.678/0001-90', 103, 27, 89.50),
('02.987.654/0001-22', 102, 40, 199.00),
('07.654.321/0001-77', 102, 30, 200.00),
('33.456.123/0001-45', 105, 36, 159.90),
('07.654.321/0001-77', 106, 30, 260.00),
('11.222.333/0001-88', 104, 48, 120.50);


INSERT INTO Pedido (cod_pedido, CNPJ, valor_total_compra, data) VALUES
(501, '45.123.678/0001-90',  9073.00, '2025-02-05'),
(502, '02.987.654/0001-22',  2985.00, '2025-02-06'),
(503, '33.456.123/0001-45',  4797.00, '2025-02-08'),
(504, '07.654.321/0001-77',  3012.50, '2025-02-10'),
(505, '11.222.333/0001-88',  1600.00, '2025-02-11');

INSERT INTO ItensPedido (cod_pedido, cod_produto, quantidade, preco) VALUES
(501, 101, 20, 229.90),
(501, 103, 50, 89.50),
(502, 102, 15, 199.00),
(503, 105, 30, 159.90),
(504, 104, 25, 120.50);