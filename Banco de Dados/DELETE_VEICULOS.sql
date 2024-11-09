
-- Comando para indicar qual banco de dados utilizar
USE locacaoVeiculos;

-- Comando para exibir os dados atuais da tabela ve�culos
SELECT * FROM Veiculos;

-- Comando para deletar determinado ve�culo da tabela manuten��o.
DELETE FROM Manutencao WHERE id_veiculo_manutencao = (
-- Comando para definir o crit�rio para deletar o ve�culo
	SELECT id_veiculos FROM Veiculos WHERE modelo_veiculo LIKE '%Belina%');

-- comando para deletar o ve�culo da tabela Veiculos indicando o crit�tio
DELETE FROM Veiculos WHERE modelo_veiculo LIKE '%Belina%';

-- Comando para exibir os dados atuais da tabela ve�culos
SELECT * FROM Veiculos;

