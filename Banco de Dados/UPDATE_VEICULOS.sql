
-- Comando para indicar qual banco de dados utilizar
USE locacaoVeiculos;

-- Comando para exibir o modelo atual do veículo
SELECT modelo_veiculo AS ModeloAntes FROM Veiculos;

-- comando para atualizar o modelo do veículo
UPDATE Veiculos SET modelo_veiculo = 'Gol'
	WHERE modelo_veiculo = 'Saveiro';

-- Comando para exibir o modelo atualizado do veículo
SELECT modelo_veiculo AS ModeloDepois FROM Veiculos;