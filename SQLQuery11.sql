CREATE TABLE produto_novo (
    idProduto INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    precovenda DECIMAL(10, 2) NOT NULL
);

