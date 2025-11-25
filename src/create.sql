CREATE TABLE Produto (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    unidade_venda VARCHAR(50) NOT NULL,
    validade DATE,
    quantidade INT NOT NULL
);

CREATE TABLE Racao (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100)  UNIQUE NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    unidade_venda VARCHAR(50) NOT NULL,
    validade DATE,
    quantidade INT NOT NULL,
    especie_alvo VARCHAR(50),
    fase_vida VARCHAR(50),
    porte VARCHAR(50),
    FOREIGN KEY (codigo) REFERENCES Produto(codigo)
        ON DELETE CASCADE
);

CREATE TABLE Graneleiro (
    id_graneleiro INT PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    quantidade DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (nome) REFERENCES Racao(nome)
);

CREATE TABLE Reposicao (
    codigo INT,
    id_graneleiro INT,
    data DATE NOT NULL,
    quantidade DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (codigo, id_graneleiro),
    FOREIGN KEY (codigo) REFERENCES Racao(codigo),
    FOREIGN KEY (id_graneleiro) REFERENCES Graneleiro(id_graneleiro)
);

CREATE TABLE Venda (
    cod_venda INT PRIMARY KEY,
    forma_pagamento VARCHAR(50) NOT NULL,
    data DATE NOT NULL,
    valor_total_venda DECIMAL(10, 2)
);

CREATE TABLE ItensVenda (
    cod_venda INT,
    cod_produto INT,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (cod_venda, cod_produto),
    FOREIGN KEY (cod_venda) REFERENCES Venda(cod_venda),
    FOREIGN KEY (cod_produto) REFERENCES Produto(codigo)
);

CREATE TABLE Fornecedor (
    CNPJ VARCHAR(18) PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Telefones (
    CNPJ VARCHAR(18),
    telefone VARCHAR(20),
    PRIMARY KEY (CNPJ, telefone),
    FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ)
        ON DELETE CASCADE
);

CREATE TABLE Fornece (
    CNPJ VARCHAR(18),
    cod_produto INT,
    tempo_entrega INT,
    preco DECIMAL(10, 2),
    PRIMARY KEY (CNPJ, cod_produto),
    FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ),
    FOREIGN KEY (cod_produto) REFERENCES Produto(codigo)
);

CREATE TABLE Pedido (
    cod_pedido INT PRIMARY KEY,
    CNPJ VARCHAR(18) NOT NULL,
    data DATE NOT NULL,
    valor_total_compra DECIMAL(10, 2),
    FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ)
);

CREATE TABLE ItensPedido (
    cod_pedido INT,
    cod_produto INT,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (cod_pedido, cod_produto),
    FOREIGN KEY (cod_pedido) REFERENCES Pedido(cod_pedido),
    FOREIGN KEY (cod_produto) REFERENCES Produto(codigo)
);
