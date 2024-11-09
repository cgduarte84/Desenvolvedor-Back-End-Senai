

-- Comando utilizado para indicar qual banco de dados utilizar
USE locacaoVeiculos;

-- Comando para inserir dados na tablea Cliente
INSERT INTO Cliente(nome, cpf, tel, email, senha, endereco, profissao)
VALUES
('José', '115.225.335-45', '99999-9999', 'jose@jose.com.br', '1960@@', 'Rua Roberto Mange 50', 'Pedreiro');


-- Comando para consultar od dados inseridos na tabela cliente
SELECT * FROM Cliente;

