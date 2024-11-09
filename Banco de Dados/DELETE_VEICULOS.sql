
-- Comando para indicar qual banco de dados utilizar
USE locacaoVeiculos;

-- Comando para exibir os dados atuais da tabela veículos
SELECT * FROM Veiculos;

-- Comando para deletar determinado veículo da tabela manutenção.
DELETE FROM Manutencao WHERE id_veiculo_manutencao = (
-- Comando para definir o critério para deletar o veículo
	SELECT id_veiculos FROM Veiculos WHERE modelo_veiculo LIKE '%Belina%');

-- comando para deletar o veículo da tabela Veiculos indicando o critétio
DELETE FROM Veiculos WHERE modelo_veiculo LIKE '%Belina%';

-- Comando para exibir os dados atuais da tabela veículos
SELECT * FROM Veiculos;

