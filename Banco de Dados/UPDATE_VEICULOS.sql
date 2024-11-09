
-- Comando para indicar qual banco de dados utilizar
USE locacaoVeiculos;

-- Comando para exibir o modelo atual do ve�culo
SELECT modelo_veiculo AS ModeloAntes FROM Veiculos;

-- comando para atualizar o modelo do ve�culo
UPDATE Veiculos SET modelo_veiculo = 'Gol'
	WHERE modelo_veiculo = 'Saveiro';

-- Comando para exibir o modelo atualizado do ve�culo
SELECT modelo_veiculo AS ModeloDepois FROM Veiculos;