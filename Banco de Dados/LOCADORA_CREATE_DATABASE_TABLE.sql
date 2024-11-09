

CREATE DATABASE locacaoVeiculos; -- Comando usado para criar o banco de dados.

USE locacaoVeiculos; -- Comando usado para indicar qual banco de dados será utilizado nas ações à seguir.

-- Comando utilizado para criar tabelas no banco de dados e determinar as configurações de cada coluna da tabela.
CREATE TABLE Veiculos(
	id_veiculo INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	modeloVeiculo VARCHAR(255) NOT NULL,
	marcaVeiculo VARCHAR(255) NOT NULL,
	categoriaVeiculo VARCHAR(255) NOT NULL,
	placaVeiculo VARCHAR(255) NOT NULL,
	renavan INT NOT NULL,
	quilometragem INT NOT NULL,
	anoFabricacao INT NOT NULL,
	cor VARCHAR(255) NOT NULL,
	combustivel VARCHAR(255) NOT NULL,
	precoDiaria INT NOT NULL,
	status VARCHAR(255) NOT NULL,
	dataUltimaManutencao DATE NOT NULL,
);
-- Comando utilizado para criar tabelas no banco de dados e determinar as configurações de cada coluna da tabela.
CREATE TABLE Cliente (
	id_cliente INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cpf INT NOT NULL,
	tel VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	endereco VARCHAR(255),
	profissao VARCHAR(255),
);
-- Comando utilizado para criar tabelas no banco de dados e determinar as configurações de cada coluna da tabela.
CREATE TABLE Funcionario (
	id_funcionario INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	nome_funcionario VARCHAR(255) NOT NULL,
	cpf_funcionario VARCHAR(255) NOT NULL,
	tel_funcionario VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	privilegio_funcionario VARCHAR(255) NOT NULL,
);
-- Comando utilizado para criar tabelas no banco de dados e determinar as configurações de cada coluna da tabela.
CREATE TABLE Reserva (
	id_reserva INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	data_reserva DATE NOT NULL,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	status_reserva VARCHAR(255) NOT NULL,
	id_veiculo_reserva INT
	FOREIGN KEY (id_veiculo_reserva) REFERENCES Veiculos (id_veiculo),
	id_cliente_reserva INT
	FOREIGN KEY (id_cliente_reserva) REFERENCES Cliente (id_cliente),
);
-- Comando utilizado para criar tabelas no banco de dados e determinar as configurações de cada coluna da tabela.
CREATE TABLE RelatorioFinanceiro (
	id_relatorio_financeiro INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	data_relatorio DATE NOT NULL,
	ganhos_relatorio DECIMAL NOT NULL,
	categoria_relatorio VARCHAR(255) NOT NULL,

	id_reserva_relatorio_financeiro INT
	FOREIGN KEY (id_reserva_relatorio_financeiro) REFERENCES Reserva (id_reserva),
);
-- Comando utilizado para criar tabelas no banco de dados e determinar as configurações de cada coluna da tabela.
CREATE TABLE Manutencao (
	id_manutencao INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	data_manutencao DATE NOT NULL,
	tipo_manutencao VARCHAR(255) NOT NULL,
	custo_manutencao VARCHAR(255) NOT NULL,

	id_veiculo_manutencao INT
	FOREIGN KEY (id_veiculo_manutencao) REFERENCES Veiculos (id_veiculo),
	);