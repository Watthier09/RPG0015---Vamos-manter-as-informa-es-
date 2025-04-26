-- Criação do banco de dados
CREATE DATABASE Lojis;
USE Lojis;

-- Criação da sequence para geração dos IDs
CREATE SEQUENCE Seq_Pessoa_ID
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    NO CYCLE;

-- Criação da tabela Pessoa
CREATE TABLE Pessoa (
    PessoaID INT PRIMARY KEY DEFAULT NEXT VALUE FOR Seq_Pessoa_ID,
    Nome NVARCHAR(100),
    TipoPessoa NVARCHAR(10),  -- 'Fisica' ou 'Juridica'
    CPF_CNPJ NVARCHAR(20),  -- CPF ou CNPJ, dependendo do tipo de pessoa
    Endereco NVARCHAR(200),
    Telefone NVARCHAR(15)
);

-- Criação da tabela Pessoa Física
CREATE TABLE PessoaFisica (
    PessoaID INT PRIMARY KEY,
    CPF NVARCHAR(14),
    DataNascimento DATE,
    CONSTRAINT FK_PessoaFisica FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

-- Criação da tabela Pessoa Jurídica
CREATE TABLE PessoaJuridica (
    PessoaID INT PRIMARY KEY,
    CNPJ NVARCHAR(18),
    RazaoSocial NVARCHAR(100),
    CONSTRAINT FK_PessoaJuridica FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

-- Outras tabelas e scripts podem ser adicionados aqui
