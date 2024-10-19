CREATE TABLE Produto (
    cod_prod SERIAL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    qtd_disponivel INT NOT NULL
);

CREATE TABLE ItensVenda (
    cod_venda SERIAL PRIMARY KEY,
    id_produto INT REFERENCES Produto(cod_prod),
    qtd_vendida INT NOT NULL
);
